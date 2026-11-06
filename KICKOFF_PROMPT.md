# Kickoff prompt for Claude Code

Paste this as your first message to Claude Code, run from your local clone of `https://github.com/gauravpwagh/propCheck.git` after the kit has been copied into it (see README → How to start).

---

```
You are building PropCheck, a Flutter app. This repo (https://github.com/gauravpwagh/propCheck.git) contains the handover kit.

1. Read CLAUDE.md, docs/SPEC.md and docs/TASKS.md fully before writing code. Note the fixed identifiers in CLAUDE.md → Project identity: package prop_check, bundle ID io.github.gauravpwagh.propcheck.
2. Run `python3 tools/reference_engine.py` and read test_fixtures/golden_cases.json so you understand the expected numbers.
3. Do milestone M0 on main (scaffold in the repo root, verify identifiers, push). Then M1 on branch m1-engine. In M1 the Dart engine must pass every golden case exactly before any UI work starts.
4. After each milestone: run `flutter analyze` and `flutter test`, tick the items in docs/TASKS.md, commit, push the branch, and open a PR to main if gh is available. Give me a short summary of what's done and anything you had to assume.
5. Stop and ask me before: changing the stack or identifiers, changing any formula or rate, or adding network access.

Start with M0 now.
```

---

Later milestones: say "Continue with M2" (and so on). If golden tests fail after you change a rate or rule on purpose, update `tools/reference_engine.py` first, regenerate the fixtures, then fix Dart.
