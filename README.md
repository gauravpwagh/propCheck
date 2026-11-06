# PropCheck – Claude Code handover kit

| Path | What it is |
|---|---|
| `CLAUDE.md` | Project rules Claude Code reads automatically: stack, architecture, commands, definition of done |
| `KICKOFF_PROMPT.md` | First message to paste into Claude Code |
| `docs/SPEC.md` | Full v1 specification |
| `docs/TASKS.md` | Milestones M0–M6 as tickable tasks |
| `docs/survey_prompt.md` | Prompt + JSON format for refreshing the scam/risk data |
| `tools/reference_engine.py` | Executable spec of all calculations (Python 3, no dependencies) |
| `test_fixtures/golden_cases.json` | 9 expected-result cases the Dart engine must match to the rupee |
| `assets/data/rate_profiles.json` | Mumbai (BMC) rates, defaults, loan assumptions, flag thresholds |
| `assets/data/steps_mumbai.json` | Stepwise buying checklist by status |
| `assets/data/mumbai_risk_data.json` | 9 scam patterns, 21 sourced Mumbai cases, verification links |

| Item | Value |
|---|---|
| Repo | https://github.com/gauravpwagh/propCheck.git |
| Dart package | `prop_check` |
| Bundle ID (Android + iOS) | `io.github.gauravpwagh.propcheck` |

## How to start
1. Install Flutter (stable), Git and Claude Code.
2. Clone the repo and copy the kit into its root:
   ```bash
   git clone https://github.com/gauravpwagh/propCheck.git
   cd propCheck
   unzip /path/to/propcheck_handover.zip -d .
   git add . && git commit -m "Add Claude Code handover kit"
   git push origin main
   ```
   If the repo is empty and has no `main` branch yet, run `git branch -M main` before pushing.
3. Start Claude Code in `propCheck/` and paste the prompt from `KICKOFF_PROMPT.md`.

## Golden cases at a glance
| Case | Total (₹) | Probable loan (₹) | Flags |
|---|---|---|---|
| Resale 1BHK ₹1 Cr, seller loan | 1,13,19,750 | 75,00,000 | funds_shortfall, seller_loan |
| UC 1BHK ₹95L + ₹5L parking | 1,34,16,605 | 75,00,000 | funds_shortfall |
| UC 1RK ₹42L affordable, female | 50,68,504 | 33,60,000 | funds_shortfall |
| UC 1BHK ₹45.5L (GST edge) | 55,63,100 | – | gst_slab_edge |
| Ready 2BHK ₹1.6 Cr joint, RRV higher | 1,86,75,140 | 1,26,00,000 | stamp_on_ready_reckoner, funds_shortfall, high_loading |
| Resale 1BHK, 1975 building | 97,44,237 | 40,57,074 | very_old_building, funds_shortfall, tenure_cut_by_building |
| Resale 1RK, no OC | 40,80,300 | – | no_oc, below_market_price |
| Budget ₹1.2 Cr resale 1BHK | max price ₹1,06,30,000 | 79,72,500 | – |
| Budget ₹50L UC 1BHK | max price ₹41,90,000 | – | – |

Totals include default interiors (₹2–6L by type), so they run higher than the plain cost guide.

Rates as of 6 Nov 2026. Not legal or financial advice.
