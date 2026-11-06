"""Reference cost engine for PropCheck.

This is the executable specification. The Dart engine in lib/domain/engine/
must produce the same numbers for every case in test_fixtures/golden_cases.json.

Rounding rule: every line item is rounded to the nearest whole rupee
(half up) as soon as it is computed; totals are sums of rounded items.

Run:  python3 tools/reference_engine.py            # regenerate golden_cases.json
"""
import json
import math
from decimal import Decimal, ROUND_HALF_UP
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SQFT_PER_SQM = 10.7639


def rnd(x):
    return int(Decimal(str(x)).quantize(Decimal("1"), rounding=ROUND_HALF_UP))


def load_profile(pid="mumbai_bmc"):
    data = json.loads((ROOT / "assets/data/rate_profiles.json").read_text())
    return next(p for p in data["profiles"] if p["id"] == pid)


def ltv_pct(value, profile):
    for slab in profile["loan"]["ltv_slabs"]:
        if slab["max_value_inr"] is None or value <= slab["max_value_inr"]:
            return slab["ltv_pct"]


def building_age(inp):
    if inp["status"] != "resale" or not inp.get("building_year"):
        return 0
    return inp["current_year"] - inp["building_year"]


def loan_eligibility(inp, av, p):
    """Returns dict with probable loan and which limit binds."""
    f = inp.get("finance") or {}
    if not f.get("using_loan"):
        return {"loan": 0, "tenure_years": 0, "binding": "no_loan", "emi": 0,
                "loan_by_income": 0, "loan_by_ltv": 0, "residual_life_years": None}
    L = p["loan"]
    age_b = building_age(inp)
    residual = L["assumed_building_life_years"] - age_b - L["building_life_buffer_years"]
    retire = L["retirement_age"][f.get("employment", "salaried")]
    candidates = {
        "max_tenure": L["max_tenure_years"],
        "requested_tenure": f.get("tenure_years", L["max_tenure_years"]),
        "retirement": retire - f["age"],
        "building_life": residual,
    }
    tenure_limit = min(candidates, key=lambda k: candidates[k])
    tenure = max(0, candidates[tenure_limit])
    rate = f.get("rate_pct", L["interest_pct"])
    i = rate / 12 / 100
    n = 12 * tenure
    emi_cap = f["net_income"] * L["foir_pct"] / 100 - f.get("existing_emi", 0)
    if emi_cap <= 0 or n <= 0:
        loan_income = 0
    else:
        loan_income = rnd(emi_cap * (1 - (1 + i) ** -n) / i)
    haircut = L["valuation_haircut_pct"] / 100
    bank_value = av * (1 - haircut)
    loan_ltv = rnd(ltv_pct(av, p) / 100 * bank_value)
    loan = max(0, min(loan_income, loan_ltv))
    binding = "ltv" if loan_ltv <= loan_income else f"income_{tenure_limit}"
    emi = rnd(loan * i / (1 - (1 + i) ** -n)) if loan > 0 and n > 0 else 0
    return {"loan": loan, "tenure_years": tenure, "binding": binding, "emi": emi,
            "loan_by_income": loan_income, "loan_by_ltv": loan_ltv,
            "residual_life_years": residual if inp["status"] == "resale" else None}


def estimate(inp, p):
    status = inp["status"]
    quoted = inp["quoted_price"]
    extras = inp.get("extras", [])
    in_agr = sum(e["amount"] for e in extras if e.get("in_agreement", True))
    outside = sum(e["amount"] for e in extras if not e.get("in_agreement", True))
    av = quoted + in_agr
    rrv = inp.get("ready_reckoner_value") or av
    carpet = inp["carpet_sqft"]
    builtup = inp.get("builtup_sqft") or round(carpet * p["builtup_to_carpet_ratio"])
    lines = {}

    lines["agreement_value"] = av
    lines["stamp_duty"] = rnd(max(av, rrv) * p["stamp_duty_pct"][inp["ownership"]] / 100)
    lines["registration"] = rnd(min(av * p["registration_pct"] / 100, p["registration_cap_inr"]))

    gst_pct = 0.0
    affordable = False
    if status == "under_construction":
        ah = p["affordable_housing"]
        affordable = carpet / SQFT_PER_SQM <= ah["max_carpet_sqm"] and av <= ah["max_value_inr"]
        gst_pct = p["gst_pct"]["under_construction_affordable" if affordable else "under_construction_standard"]
    lines["gst"] = rnd(av * gst_pct / 100)

    if status in ("under_construction", "ready_possession"):
        lines["builder_extras_outside_agreement"] = outside
        lines["corpus"] = inp.get("corpus", 0)
    months = inp.get("maintenance_months", p["advance_maintenance_months"][status])
    rate_psf = inp.get("maintenance_rate_psf", p["maintenance_rate_psf_month"])
    lines["advance_maintenance"] = rnd(months * rate_psf * carpet)

    if status == "resale":
        lines["society_transfer"] = inp.get("transfer_fee", p["society_transfer_fee_inr"])
        bpct = inp.get("brokerage_pct", p["brokerage_pct_default"])
        lines["brokerage"] = rnd(quoted * bpct / 100 * (1 + p["service_gst_pct"] / 100))
        age = building_age(inp)
        psf = next(b["psf"] for b in p["renovation_psf_by_age"] if b["min_age"] <= age <= b["max_age"])
        lines["renovation"] = rnd(psf * carpet)

    loan = loan_eligibility(inp, av, p)
    L = loan["loan"]
    if L > 0:
        lines["loan_processing"] = rnd(L * p["loan_processing_pct"] / 100 * (1 + p["service_gst_pct"] / 100))
        ms = p["mortgage_stamp_duty"]
        lines["mortgage_stamp_duty"] = rnd(min(L * ms["pct"] / 100, ms["cap_inr"]))

    lines["legal"] = inp.get("legal_fees", p["legal_fees_inr"])

    if status == "under_construction":
        mtp = inp.get("months_to_possession", 36)
        rate = (inp.get("finance") or {}).get("rate_pct", p["loan"]["interest_pct"])
        lines["pre_emi_interest"] = rnd(L * rate / 100 * p["pre_emi_avg_disbursed_fraction"] * mtp / 12)
        lines["rent_overlap"] = rnd(inp.get("monthly_rent", 0) * mtp)

    lines["interiors"] = inp.get("interiors", p["interiors_inr"][inp["type"]])

    total = sum(lines.values())
    extra_over_quoted = total - quoted
    result = {
        "lines": lines,
        "total": total,
        "extra_over_quoted": extra_over_quoted,
        "extra_pct_of_quoted": round(extra_over_quoted / quoted * 100, 2),
        "gst_pct_applied": gst_pct,
        "affordable_housing": affordable,
        "loan": loan,
        "own_funds_needed": total - L,
        "tds_applicable": av >= p["tds"]["threshold_inr"],
        "tds_amount": rnd(av * p["tds"]["pct"] / 100) if av >= p["tds"]["threshold_inr"] else 0,
        "seller_bank_payoff": inp.get("seller_loan", 0) if status == "resale" else 0,
        "per_sqft": {
            "quoted_carpet": rnd(quoted / carpet),
            "quoted_builtup": rnd(quoted / builtup),
            "all_in_carpet": rnd(total / carpet),
            "all_in_builtup": rnd(total / builtup),
            "loading_pct": round((builtup / carpet - 1) * 100, 2),
        },
        "building_age": building_age(inp),
    }
    result["flags"] = flags(inp, result, p)
    return result


def flags(inp, r, p):
    t = p["flag_thresholds"]
    out = []
    st = inp["status"]
    av = r["lines"]["agreement_value"]
    carpet_sqm = inp["carpet_sqft"] / SQFT_PER_SQM
    ah = p["affordable_housing"]
    if st == "under_construction" and not inp.get("rera_number"):
        out.append(("no_rera", "critical"))
    if st in ("ready_possession", "resale") and inp.get("has_oc") is False:
        out.append(("no_oc", "critical"))
    if (st == "under_construction" and carpet_sqm <= ah["max_carpet_sqm"]
            and ah["max_value_inr"] < av <= ah["max_value_inr"] + t["gst_edge_band_inr"]):
        out.append(("gst_slab_edge", "warning"))
    if (inp.get("ready_reckoner_value") or 0) > av:
        out.append(("stamp_on_ready_reckoner", "info"))
    age = r["building_age"]
    if st == "resale" and age >= t["very_old_building_age"]:
        out.append(("very_old_building", "critical"))
    elif st == "resale" and age >= t["old_building_age"]:
        out.append(("old_building", "warning"))
    f = inp.get("finance") or {}
    if "own_funds" in f and r["own_funds_needed"] > f["own_funds"]:
        out.append(("funds_shortfall", "critical"))
    if r["loan"]["binding"] == "income_building_life":
        out.append(("tenure_cut_by_building", "warning"))
    if st == "resale" and inp.get("seller_loan", 0) > 0:
        out.append(("seller_loan", "warning"))
    if r["per_sqft"]["loading_pct"] > t["high_loading_pct"]:
        out.append(("high_loading", "info"))
    ref = inp.get("area_reference_psf")
    if ref and r["per_sqft"]["quoted_carpet"] < ref * t["below_market_ratio"]:
        out.append(("below_market_price", "warning"))
    return [{"id": i, "severity": s} for i, s in out]


def solve_budget(inp, p, budget):
    """Highest quoted price (rounded down to 10,000) whose total <= budget."""
    lo, hi = 0, budget
    for _ in range(60):
        mid = (lo + hi) // 2
        trial = dict(inp, quoted_price=max(mid, 1))
        if estimate(trial, p)["total"] <= budget:
            lo = mid
        else:
            hi = mid
        if hi - lo <= 1:
            break
    price = (lo // 10000) * 10000
    return price, estimate(dict(inp, quoted_price=price), p)


BASE_FIN = {"using_loan": True, "age": 32, "employment": "salaried", "net_income": 200000,
            "existing_emi": 0, "rate_pct": 8.5, "tenure_years": 20}

CASES = [
    {"name": "resale_1bhk_1cr_seller_loan", "mode": "price_to_total", "input": {
        "status": "resale", "type": "1BHK", "quoted_price": 10000000, "carpet_sqft": 450, "builtup_sqft": 540,
        "ownership": "male", "building_year": 2005, "has_oc": True, "seller_loan": 4000000,
        "brokerage_pct": 1.0, "transfer_fee": 25000, "current_year": 2026,
        "finance": dict(BASE_FIN, own_funds=3000000)}},
    {"name": "uc_1bhk_1cr_parking_in_agreement", "mode": "price_to_total", "input": {
        "status": "under_construction", "type": "1BHK", "quoted_price": 9500000, "carpet_sqft": 420,
        "ownership": "male", "rera_number": "P51800000000",
        "extras": [{"kind": "parking", "amount": 500000, "in_agreement": True},
                   {"kind": "clubhouse", "amount": 150000, "in_agreement": False}],
        "corpus": 50000, "months_to_possession": 30, "monthly_rent": 25000, "current_year": 2026,
        "finance": dict(BASE_FIN, own_funds=4000000)}},
    {"name": "uc_1rk_affordable_female", "mode": "price_to_total", "input": {
        "status": "under_construction", "type": "1RK", "quoted_price": 4200000, "carpet_sqft": 320,
        "ownership": "female", "rera_number": "P51800000001", "months_to_possession": 24,
        "current_year": 2026,
        "finance": dict(BASE_FIN, net_income=60000, own_funds=1200000)}},
    {"name": "uc_gst_slab_edge", "mode": "price_to_total", "input": {
        "status": "under_construction", "type": "1BHK", "quoted_price": 4550000, "carpet_sqft": 400,
        "ownership": "male", "rera_number": "P51800000002", "months_to_possession": 24,
        "current_year": 2026, "finance": {"using_loan": False}}},
    {"name": "ready_2bhk_joint_rrv_higher", "mode": "price_to_total", "input": {
        "status": "ready_possession", "type": "2BHK", "quoted_price": 16000000, "carpet_sqft": 700,
        "builtup_sqft": 950, "ownership": "joint", "ready_reckoner_value": 17000000, "has_oc": True,
        "extras": [{"kind": "parking", "amount": 800000, "in_agreement": True}],
        "corpus": 100000, "current_year": 2026,
        "finance": dict(BASE_FIN, net_income=350000, own_funds=6000000)}},
    {"name": "resale_old_building_1975", "mode": "price_to_total", "input": {
        "status": "resale", "type": "1BHK", "quoted_price": 8500000, "carpet_sqft": 400,
        "ownership": "male", "building_year": 1975, "has_oc": True, "current_year": 2026,
        "finance": dict(BASE_FIN, own_funds=2500000)}},
    {"name": "resale_no_oc_no_loan", "mode": "price_to_total", "input": {
        "status": "resale", "type": "1RK", "quoted_price": 3500000, "carpet_sqft": 280,
        "ownership": "female", "building_year": 1998, "has_oc": False, "current_year": 2026,
        "area_reference_psf": 18000, "finance": {"using_loan": False}}},
    {"name": "budget_resale_1bhk_1_2cr", "mode": "budget_to_price", "budget": 12000000, "input": {
        "status": "resale", "type": "1BHK", "quoted_price": 1, "carpet_sqft": 450, "builtup_sqft": 540,
        "ownership": "male", "building_year": 2010, "has_oc": True, "current_year": 2026,
        "finance": dict(BASE_FIN, net_income=250000)}},
    {"name": "budget_uc_1bhk_50l_near_slab", "mode": "budget_to_price", "budget": 5000000, "input": {
        "status": "under_construction", "type": "1BHK", "quoted_price": 1, "carpet_sqft": 380,
        "ownership": "male", "rera_number": "P51800000003", "months_to_possession": 24,
        "current_year": 2026, "finance": {"using_loan": False}}},
]


def main():
    p = load_profile()
    out = {"generated_by": "tools/reference_engine.py", "profile_id": p["id"],
           "profile_version": p["version"], "rounding": "each line item rounded to nearest rupee, half up",
           "cases": []}
    for c in CASES:
        if c["mode"] == "budget_to_price":
            price, res = solve_budget(c["input"], p, c["budget"])
            out["cases"].append({"name": c["name"], "mode": c["mode"], "budget": c["budget"],
                                 "input": c["input"], "expected_max_price": price, "expected": res})
        else:
            out["cases"].append({"name": c["name"], "mode": c["mode"], "input": c["input"],
                                 "expected": estimate(c["input"], p)})
    path = ROOT / "test_fixtures/golden_cases.json"
    path.write_text(json.dumps(out, indent=2))
    for c in out["cases"]:
        e = c["expected"]
        extra = f" max_price={c['expected_max_price']:,}" if "expected_max_price" in c else ""
        print(f"{c['name']:36s} total={e['total']:>12,} loan={e['loan']['loan']:>11,} "
              f"({e['loan']['binding']}) flags={[f['id'] for f in e['flags']]}{extra}")


if __name__ == "__main__":
    main()
