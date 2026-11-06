# CLAUDE.md – PropCheck (Flutter)

## What this is
PropCheck is an offline-first Flutter app (Android + iOS) that estimates the true cost of buying property. It also checks probable loan eligibility, saves and compares properties, and gives stepwise buying guidance with red flags and local scam patterns.

v1 covers residential flats (1RK / 1BHK / 2BHK) in Mumbai. The model must stay open to other property categories (plots, bungalows, shops, offices) and cities; see SPEC §10.

Read `docs/SPEC.md` before writing code. Work through `docs/TASKS.md` in order and tick items as you finish them.

## Project identity
| Item | Value |
|---|---|
| App display name | PropCheck |
| Git remote | `https://github.com/gauravpwagh/propCheck.git` (branch `main`) |
| Dart package name | `prop_check` (imports: `package:prop_check/...`) |
| Organisation | `io.github.gauravpwagh` |
| Android applicationId / namespace | `io.github.gauravpwagh.propcheck` |
| iOS bundle identifier | `io.github.gauravpwagh.propcheck` |

The package name comes from the repo name `propCheck`, converted to Dart's lowercase_with_underscores. The bundle ID uses the reverse-domain form of the GitHub owner. Don't change either without asking: they are permanent once the app is published.

## Git workflow
- The Flutter project lives at the **repo root** (not in a subfolder).
- One branch per milestone (`m1-engine`, `m2-wizard`, …), merged to `main` when its checks pass. Small commits with clear messages.
- Push after each milestone: `git push -u origin <branch>`. Open a PR to `main` if the GitHub CLI is available; otherwise tell the user the branch is ready.
- Never force-push to `main`. Never commit secrets, keystores or `key.properties`.

## Source of truth
- **Numbers:** `tools/reference_engine.py` is the executable spec. The Dart engine must reproduce every case in `test_fixtures/golden_cases.json` exactly (to the rupee). If the spec text and the reference engine disagree, the reference engine wins; flag the disagreement to the user.
- **Rates and defaults:** `assets/data/rate_profiles.json`. Never hard-code a rate, slab, threshold or default amount in Dart; read it from the active `RateProfile`.
- **Guidance content:** `assets/data/steps_mumbai.json` and `assets/data/mumbai_risk_data.json`. UI renders whatever these files contain.

## Stack (do not swap without asking)
Flutter stable, Dart 3, `flutter_riverpod` + `riverpod_generator`, `go_router`, `drift` + `sqlite3_flutter_libs`, `freezed` + `json_serializable`, `intl` (`en_IN`), `fl_chart`, `json_schema`, `share_plus`, `file_picker`. Tests: `flutter_test`, `mocktail`.

## Architecture rules
- `lib/domain/` is pure Dart: no `package:flutter` imports. Engine, loan eligibility, budget solver and flag rules live here.
- Money is `int` rupees in the domain (the reference rounds each line item to the nearest rupee, half up). Use a `Money` helper for formatting only (₹12,34,567 / "12.35 L" / "1.02 Cr").
- Store user **inputs** in the DB, never computed totals as truth. Results are recomputed from inputs + the stored rate profile version. `result_cache` is only for list/compare speed.
- Feature-first folders under `lib/features/`. One Riverpod controller per screen.
- Bundled JSON is seeded into the DB on first run; imports replace the DB copy, never the asset.

## Commands
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter test
flutter analyze
python3 tools/reference_engine.py   # regenerates test_fixtures/golden_cases.json
```

## Definition of done for any task
1. `flutter analyze` clean, `flutter test` green.
2. Engine changes: golden tests still pass; if behaviour intentionally changes, update `tools/reference_engine.py` first, regenerate fixtures, and say so in the commit.
3. New user-facing text is in ARB files (`lib/l10n/app_en.arb`), not inline.
4. Tick the item in `docs/TASKS.md`.

## Domain notes worth remembering
- Stamp duty is charged on the higher of agreement value and ready reckoner value.
- GST applies only to under-construction; 1% only when carpet ≤ 60 m² AND value ≤ ₹45 lakh, else 5%.
- Registration is 1% capped at ₹30,000.
- TDS (1% when value ≥ ₹50 lakh) is a payment-routing note, not an extra cost.
- A seller's outstanding loan changes who gets paid, not the total cost.
- Loan = min(income-based loan, LTV × value); tenure = min(max tenure, requested, retirement − age, building residual life).

## Things not to do
- Don't present output as legal or financial advice; keep the disclaimer on the result screen.
- Don't add network calls, analytics, or accounts in v1.
- Don't auto-apply `rate_snapshot` from an imported risk file; offer it.
