# PropCheck – Specification v1

Status: ready for build · Date: 2026-11-06

## 1. Goal and scope
Help a Mumbai homebuyer see the full cost of a 1RK/1BHK/2BHK flat beyond the quoted price, check probable loan eligibility, save/compare properties, and follow a stepwise buying checklist with red flags and local scam patterns.

Two modes, one engine:

| Mode | User enters | App returns |
|---|---|---|
| `price_to_total` | Quoted price | Total outflow, own funds needed, probable loan, per-sq-ft rates |
| `budget_to_price` | Total budget | Highest affordable quoted price, with full breakdown |

Statuses: `under_construction`, `ready_possession`, `resale`. Types: `1RK`, `1BHK`, `2BHK`.

Out of scope for v1: backend, accounts, live rate APIs, broker marketplace. Plots, bungalows and commercial property are v2, but the v1 design must leave room for them (§10).

App name **PropCheck** · package `prop_check` · bundle ID `io.github.gauravpwagh.propcheck` · repo `https://github.com/gauravpwagh/propCheck.git`.

## 2. Onboarding wizard
One question per screen, each pre-filled from the rate profile defaults, with a live running total pinned at the bottom. Conditional screens are skipped and not counted in the progress bar. Back keeps answers.

| # | Screen | Fields (default) | When |
|---|---|---|---|
| 1 | Mode | price_to_total / budget_to_price (price_to_total) | always |
| 2 | City & locality | profile (`mumbai_bmc`), locality text | always |
| 3 | Type | 1RK / 1BHK / 2BHK (1BHK) | always |
| 4 | Status | UC / Ready / Resale (Resale) | always |
| 5 | Amount | quoted price or budget (INR, lakh/crore display) | always |
| 6 | Area | carpet sq ft (by type), built-up (carpet × 1.2), sq ft/sq m toggle, optional ready reckoner value, optional area reference rate ₹/sq ft | always |
| 7 | Buyer | ownership male/female/joint (male) | always |
| 8 | Builder extras | list of {kind, amount, in_agreement=true}, corpus | UC, Ready |
| 9 | Maintenance | months (UC/Ready 24, Resale 0), ₹/sq ft/month (6), transfer fee (Resale 25,000) | always |
| 10 | Resale details | building year, has OC (yes), seller loan (0), brokerage % (1) | Resale |
| 11 | UC details | RERA number, months to possession (36), monthly rent (0) | UC |
| 12 | Financing | using loan (yes), age (32), employment, net monthly income, existing EMIs, own funds, rate (8.5), tenure (20) | always, skippable |
| 13 | One-time | legal fees (25,000), interiors (by type) | always, skippable |
| 14 | Result | breakdown, per sq ft, loan, flags, steps, risks; Save | always |

Each screen: one-line "why we ask" helper and an info sheet explaining the cost item.

## 3. Calculation engine
Executable spec: `tools/reference_engine.py` (`estimate`, `loan_eligibility`, `solve_budget`, `flags`). Port it 1:1 to `lib/domain/engine/`. Summary:

- AV = quoted + extras with `in_agreement`.
- Stamp duty = max(AV, RRV) × stamp% by ownership.
- Registration = min(AV × 1%, 30,000).
- GST (UC only) = AV × (1% if carpet_sqm ≤ 60 and AV ≤ 45L else 5%). 1 sq m = 10.7639 sq ft.
- UC/Ready: builder extras outside agreement, corpus.
- All: advance maintenance = months × rate × carpet; legal; interiors.
- Resale: transfer fee; brokerage = quoted × % × 1.18; renovation = psf-by-age × carpet.
- If loan > 0: processing = loan × 0.5% × 1.18; mortgage stamp = min(loan × 0.3%, 10,000).
- UC: pre-EMI = loan × rate × 0.5 × months/12; rent overlap = rent × months.
- Total = sum of lines (AV included). Own funds needed = total − loan.
- Outputs also: TDS note (1% if AV ≥ 50L), seller-bank payoff (resale), per sq ft (quoted/all-in × carpet/built-up), loading %.
- Rounding: each line item to nearest rupee, half up.

### Loan eligibility
- Building age = current year − building year (resale only; else 0).
- Residual life = 60 − age − 5.
- Tenure = min(30, requested, retirement age − buyer age, residual life); record which limit binds.
- EMI cap = income × 50% − existing EMIs. Loan by income = PV of EMI cap over tenure.
- LTV by AV: ≤30L 90%, ≤75L 80%, else 75%. Loan by LTV = LTV × AV × (1 − haircut).
- Loan = min(by income, by LTV). `binding` = `ltv` or `income_<tenure limit>`.

### Budget → price
Binary search on quoted price in [0, budget] until hi − lo ≤ 1, keeping the highest price whose total ≤ budget; round down to ₹10,000. Use exactly the reference algorithm (total is not strictly monotonic around LTV slabs, so a different search can give a different answer). Show a note when a GST slab boundary is within ₹2L of the answer.

## 4. Flags
Implemented as data-driven rules (id, severity, condition, message key, action key). Thresholds come from `flag_thresholds` in the profile.

| id | condition | severity |
|---|---|---|
| no_rera | UC and RERA number empty | critical |
| no_oc | Ready/Resale and has_oc = false | critical |
| gst_slab_edge | UC, carpet ≤ 60 m², 45L < AV ≤ 45L + 2L | warning |
| stamp_on_ready_reckoner | RRV > AV | info |
| very_old_building | Resale and age ≥ 40 | critical |
| old_building | Resale and 30 ≤ age < 40 | warning |
| funds_shortfall | own funds entered and own funds needed > own funds | critical |
| tenure_cut_by_building | loan binding = income_building_life | warning |
| seller_loan | Resale and seller loan > 0 | warning |
| high_loading | loading > 30% | info |
| below_market_price | area reference given and quoted carpet rate < 0.8 × reference | warning |
| risk_area | locality matches an `area_notes[].area` entry (case-insensitive contains) | warning |

`risk_area` needs the risk data, so it is evaluated in the guidance layer, not the reference engine.

Every result also shows these uncertainties: rates as-of date, bank valuation risk, builder/society charges vary, UC delay cost, not legal/financial advice.

## 5. Guidance
- Steps: `steps_mumbai.json`, filtered by status and `condition` (`using_loan`, `seller_loan`), ordered by `order`. Each becomes a checklist item saved per property.
- Scam patterns: `mumbai_risk_data.json`, filtered by `applies_to_status`, sorted by severity (critical > high > medium > low), then area match first. Each pattern's `prevention_checks` are appended to the checklist under "Safety checks".
- Show `as_of` for risk data; if older than 6 months show "data may be outdated".

## 6. Settings
- Rate profile editor (grouped fields, 0–20% validation for percentages, reset to bundled, as-of date).
- Loan assumptions, defaults by type, flag thresholds.
- Risk data: version, as-of, Import JSON (paste or file) validated against schema 1.0 (see `docs/survey_prompt.md`), Restore bundled. If the import has `rate_snapshot`, offer "Update default rates?" – never auto-apply.
- Backup: export/import all properties as JSON.
- Editing a profile bumps its `version`; saved properties keep the version they were calculated with, with an "Recalculate with current rates" action.

## 7. Data model (Drift)
`properties`, `property_extras`, `resale_details`, `uc_details`, `buyer_finance`, `checklist_items`, `rate_profiles`, `risk_data`, `result_cache` – fields as in `docs/TASKS.md` M3. Inputs only; results recomputed.

## 8. Screens
Home (property list + "New estimate"), Wizard, Result, Property detail (sections editable, Duplicate, Delete with confirm), Compare (2–3 properties, aligned rows, best value highlighted, stacked cost-split bars), Risks library, Settings.

## 9. Non-functional
Offline only. Indian number formatting. Accessible labels on all amounts, min 48dp targets, works with large text. Light/dark themes. English first; strings in ARB for later Marathi/Hindi.

## 10. Extensibility: property categories (v2-ready)
PropCheck will later cover all real estate. v1 ships only `residentialFlat`, but these hooks must exist from M1 so v2 is additive, not a rewrite.

| Hook | v1 behaviour | Why |
|---|---|---|
| `PropertyCategory` enum: `residentialFlat`, `rowHouseBungalow`, `plot`, `shop`, `office` | Only `residentialFlat` selectable; others hidden | Category drives which questions, cost lines and rules apply |
| `PropertyInput.category` + DB column `properties.category` (default `residential_flat`) | Always `residential_flat` | No migration needed later |
| `type` stays a free string per category (`1RK/1BHK/2BHK` for flats) | Flat types only | Plots use area only; shops/offices use size bands |
| Rate profile section `categories.<category>` for GST rates, LTV/tenure, default extras | Flat values live at the top level as today; a missing `categories` block means "flat only" | Commercial GST, plot loans and land rules differ by category |
| `CostLineRegistry`: each cost line declares the categories and statuses it applies to | All current lines tagged `residentialFlat` | New categories add lines without touching existing ones |
| Steps and risk data carry optional `applies_to_category` (default: all) | Ignored except for filtering | Category-specific checklists later (7/12 extract for plots, etc.) |

Known v2 differences to plan for (verify current rules at build time):
- Plots and land: no GST on the sale of land; title checks shift to 7/12, property card and NA permission.
- Under-construction commercial property: different GST rate, with input tax credit.
- Plot and commercial loans: lower LTV and shorter tenure than home loans; some lenders don't fund land-only purchases.
- Society transfer fee, advance maintenance and flat-type presets don't apply to plots and standalone houses.
