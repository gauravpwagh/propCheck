# Generates test/fixtures/edge_cases.json from the reference engine.
# Run: python3 tools/edge_cases.py > test/fixtures/edge_cases.json
import sys, json
sys.path.insert(0, 'tools')
import reference_engine as R
p = R.load_profile()
FIN = dict(R.BASE_FIN, own_funds=0)
def uc(**kw):
    d = {"status":"under_construction","type":"1BHK","quoted_price":4500000,"carpet_sqft":60*10.7639,
         "ownership":"male","rera_number":"X","months_to_possession":24,"current_year":2026,"finance":{"using_loan":False}}
    d.update(kw); return d
def rs(**kw):
    d = {"status":"resale","type":"1BHK","quoted_price":5000000,"carpet_sqft":400,"ownership":"male",
         "building_year":1996,"has_oc":True,"current_year":2026,"finance":dict(R.BASE_FIN)}
    d.update(kw); return d
cases = {
 "carpet_60sqm_av_45L": uc(),
 "carpet_60sqm_av_45L_plus1": uc(quoted_price=4500001),
 "carpet_just_over_60sqm": uc(carpet_sqft=646),
 "av_50L_tds": rs(quoted_price=5000000),
 "av_just_under_50L": rs(quoted_price=4999999),
 "av_75L_ltv": rs(quoted_price=7500000),
 "av_75L_plus1_ltv": rs(quoted_price=7500001),
 "av_30L_ltv": rs(quoted_price=3000000),
 "age_30": rs(building_year=1996),
 "age_29": rs(building_year=1997),
 "age_40": rs(building_year=1986),
 "residual_zero": rs(building_year=1971),
 "residual_negative": rs(building_year=1960),
 "no_loan": rs(finance={"using_loan":False}),
 "zero_income": rs(finance=dict(R.BASE_FIN, net_income=0)),
 "existing_emi_exceeds": rs(finance=dict(R.BASE_FIN, net_income=100000, existing_emi=60000)),
 "retirement_binds": rs(finance=dict(R.BASE_FIN, age=50, net_income=80000)),
}
out = {}
for k, v in cases.items():
    r = R.estimate(v, p)
    out[k] = {"input": v, "total": r["total"], "lines": r["lines"], "loan": r["loan"], "flags": [f["id"] for f in r["flags"]],
              "gst_pct": r["gst_pct_applied"], "tds": r["tds_amount"]}
print(json.dumps(out))
