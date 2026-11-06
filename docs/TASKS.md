# Build tasks

Work top to bottom. Each milestone ends with `flutter analyze` clean and `flutter test` green. Tick items as you go.

## M0 – Project setup
- [x] In the repo root (handover kit already committed there), run `flutter create --org io.github.gauravpwagh --project-name prop_check --platforms android,ios .`. Don't overwrite `README.md`; merge Flutter's run instructions into it.
- [x] Verify the identifiers: `pubspec.yaml` name `prop_check`, Android `applicationId` and `namespace` `io.github.gauravpwagh.propcheck`, iOS `PRODUCT_BUNDLE_IDENTIFIER` `io.github.gauravpwagh.propcheck`, display name "PropCheck" (Android `android:label`, iOS `CFBundleDisplayName`).
- [x] Add a Flutter `.gitignore` (keep `tools/` and `test_fixtures/` tracked; ignore `android/key.properties`, `*.jks`).
- [x] Commit "M0: Flutter scaffold" on `main` and push to `origin`.
- [x] Add packages listed in CLAUDE.md; enable `flutter_lints` (strict) and `build_runner`.
- [x] Register `assets/data/` in `pubspec.yaml`; set up `lib/l10n/app_en.arb` with `intl` generation.
- [x] Create the folder skeleton from SPEC §8 / plan: `app/`, `core/`, `domain/`, `data/`, `features/`.

## M1 – Domain engine (no UI)
- [x] Freezed models: `RateProfile` (parses `rate_profiles.json`), `PropertyInput`, `Extra`, `Finance`, `CostBreakdown`, `LoanResult`, `Flag`.
- [x] Add the category extension points from SPEC §10: `PropertyCategory` enum (only `residentialFlat` enabled), `PropertyInput.category`, and a `CostLineRegistry` so line items are selected per category and status rather than by hard-coded `if` chains.
- [x] `estimate()` ported from `tools/reference_engine.py` with the same line-item keys.
- [x] `loanEligibility()` with binding-limit reporting.
- [x] `solveBudget()` using the identical binary search.
- [x] `evaluateFlags()` for all rules except `risk_area`.
- [x] Golden test: load `test_fixtures/golden_cases.json`, run every case, assert every line item, total, loan fields, flags and (budget cases) `expected_max_price`.
- [x] Unit tests for edge cases: carpet exactly 60 m², AV exactly 45L / 50L / 75L, building age 30 and 40, residual life ≤ 0 (loan 0), no loan, zero income.
- [x] `Money` formatter tests: 1234567 → "₹12,34,567", "12.35 L", 10200000 → "1.02 Cr".

## M2 – Wizard and result
- [x] Wizard controller holding a draft `PropertyInput`, pre-filled from the active profile.
- [x] 14 screens per SPEC §2 with conditional skipping and accurate progress.
- [x] Live total bar using the engine.
- [x] Result screen: breakdown grouped (Price & taxes / Builder & society / Loan costs / Moving in), own funds needed, loan card (amount, EMI, tenure, binding limit explained), per-sq-ft card, flags list, disclaimer.
- [x] Budget mode result shows max price plus slab-boundary note.
- [x] Widget tests for skip logic and for result rendering of one golden case.

## M3 – Storage, save, edit, compare
- [x] Drift tables: `properties` (id, name, mode, profile_id, rate_version, locality, type, status, quoted_price, budget, carpet_sqft, builtup_sqft, ready_reckoner_value, area_reference_psf, ownership, created_at, updated_at, is_archived), `property_extras`, `resale_details` (building_year, has_oc, seller_loan, brokerage_pct, transfer_fee), `uc_details` (rera_number, months_to_possession, monthly_rent), `buyer_finance`, `checklist_items` (property_id, item_id, source[step|safety], done, note, done_at), `rate_profiles` (id, version, as_of, json, is_bundled), `risk_data` (version, as_of, json), `result_cache`.
- [x] First-run seeding of bundled profile, steps and risk data.
- [x] Repositories + Riverpod providers.
- [x] Home list with search, sort (updated, total, ₹/sq ft), archive.
- [x] Property detail: edit per section (reopens that wizard screen), Duplicate, Delete with confirm.
- [x] Compare 2–3 properties: aligned rows (quoted, total, own funds, loan, EMI, ₹/sq ft quoted & all-in, loading, stamp, GST, extras, building age, status, flags by severity, checklist %), best-value highlight, `fl_chart` stacked cost split.
- [x] Repository tests with an in-memory Drift DB.

## M4 – Guidance and risks
- [x] Steps loader + filter by status/condition; checklist persisted per property.
- [x] Risk loader; patterns filtered/sorted per SPEC §5; `risk_area` flag via `area_notes`.
- [x] Safety checks from `prevention_checks` appended to the checklist.
- [x] Risks library screen: pattern cards, red flags, recent cases with source links (`url_launcher`), official verification links.
- [x] Staleness banner when risk `as_of` > 6 months.

## M5 – Settings, import, backup
- [ ] Rate profile editor with validation, reset to bundled, version bump on save, "Recalculate with current rates" on property detail.
- [ ] Loan assumptions, defaults and thresholds editors.
- [ ] Risk JSON import (paste or file), schema validation with field-level error messages, restore bundled, optional rate_snapshot offer.
- [ ] Backup export/import of all properties (JSON via `share_plus` / `file_picker`).

## M6 – Polish and beta
- [ ] Info sheets for every cost item and flag (ARB strings).
- [ ] Accessibility pass: semantics labels, large text, contrast, dark mode.
- [ ] App icon, splash, store metadata draft, privacy note (all data on device).
- [ ] Release builds for Android (AAB) and iOS (TestFlight-ready).
