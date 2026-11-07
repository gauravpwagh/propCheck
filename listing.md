# PropCheck – store listing essentials

Values to paste into Google Play Console and App Store Connect. Full listing text, data-safety answers and screenshots: [docs/store/metadata.md](docs/store/metadata.md).

## Identifiers
| Item | Value |
|---|---|
| App name | PropCheck |
| Android package name (applicationId) | `io.github.gauravpwagh.propcheck` |
| iOS bundle ID | `io.github.gauravpwagh.propcheck` |
| Dart package | `prop_check` |
| Version | 1.0.1 (build 2) |

The package name and bundle ID can't be changed after the first upload.

## Privacy policy
**URL:** https://github.com/gauravpwagh/propCheck/blob/main/docs/PRIVACY.md

Source: [docs/PRIVACY.md](docs/PRIVACY.md). The URL works only while the repository is public; if it goes private, host the policy elsewhere (for example GitHub Pages) and update this URL in both consoles.

## Short description (Play, ≤ 80 chars)
True cost of buying a flat in Mumbai: stamp duty, GST, loan, fees and scams.

## Category
Finance

## Data safety summary
No data collected or shared. No network access, accounts, ads or analytics. Uninstalling deletes all data.

## Build to upload
`build/app/outputs/bundle/release/app-release.aab`, signed with the upload key in `android/key.properties`. Steps: [docs/RELEASE.md](docs/RELEASE.md).
