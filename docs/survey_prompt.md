# Mumbai Property Risk Survey – Update Prompt

Use this to refresh the app's static risk data (`assets/data/mumbai_risk_data.json`).

**How to update**
1. Open any AI assistant that can search the web (Claude with web search, etc.).
2. Copy everything inside the PROMPT block below, set `{{AS_OF_DATE}}` and `{{REGION}}`, and paste it in.
3. Copy the JSON it returns (only the JSON).
4. Either replace `assets/data/mumbai_risk_data.json` and rebuild, or paste it into the app: **Settings → Risk data → Import JSON**. The app validates it against `schema_version` 1.0 and rejects it if required fields are missing.
5. Spot-check 3–4 `source_url` links before publishing.

Suggested cadence: every 3–6 months, or after a major news event or a stamp duty / GST change.

---

## PROMPT (copy from here)

```
You are a research assistant updating a risk database for homebuyers in {{REGION}} (default: Mumbai Metropolitan Region, India). Today's date is {{AS_OF_DATE}}.

TASK
Search the web for property-buying scams, frauds and buyer risks reported in {{REGION}} in roughly the last 24 months, plus current stamp duty, registration and GST rates for residential flats. Focus on cases relevant to people buying 1RK, 1BHK or 2BHK flats (under construction, ready possession, resale).

Cover at least these pattern ids (add new ones if you find a distinct recurring pattern):
- double_sale (same flat sold to multiple buyers)
- fake_owner_listing (impersonation, fake online listings)
- undisclosed_loan (hidden mortgage/loan on resale flat)
- illegal_building_forged_permits (fake CC/OC/RERA, buildings on reserved land, demolitions)
- sra_redevelopment_sale_component (SRA/society redevelopment frauds)
- fake_govt_scheme (fake MHADA/MMRDA allotment)
- fake_bank_auction (fake bank-seized flats)
- identity_forgery_title (forged sale deeds, owner identity theft)
- stalled_project (delays, diverted funds, MahaRERA action)

RULES
- Use only cases you actually found in sources you opened. Never invent cases, amounts, dates or URLs.
- Write every summary in your own words, max 30 words. Do not copy sentences from articles.
- Prefer police, court, ED/EOW, MahaRERA, government and established news sources. Skip forums and SEO listicles.
- Describe accused as "allegedly" unless a court has convicted them.
- Up to 5 most recent cases per pattern, newest first. Use null when an amount is unknown.
- amount_inr is a plain integer in rupees (Rs 2.52 crore = 25200000).
- Dates as YYYY-MM-DD; if only year/month is known, use "YYYY" or "YYYY-MM".
- applies_to_status values: "under_construction", "ready_possession", "resale".
- severity values: "low", "medium", "high", "critical".
- For rate_snapshot, give rates for Mumbai within BMC limits and cite the source pages.
- If something is uncertain or sources conflict, mention it in "notes".

OUTPUT
Return ONLY one valid JSON object, no markdown fences, no commentary, exactly in this structure:

{
  "schema_version": "1.0",
  "region": "string",
  "as_of": "YYYY-MM-DD",
  "generated_by": "string (tool/model name)",
  "disclaimer": "string",
  "scam_patterns": [
    {
      "id": "snake_case_string",
      "title": "string",
      "severity": "low|medium|high|critical",
      "applies_to_status": ["under_construction" | "ready_possession" | "resale"],
      "applies_to_areas": ["area name" or "all"],
      "how_it_works": "string, max 50 words",
      "red_flags": ["string", "..."],
      "prevention_checks": ["string", "..."],
      "recent_cases": [
        {
          "date": "YYYY-MM-DD | YYYY-MM | YYYY",
          "area": "string",
          "amount_inr": integer or null,
          "summary": "string, max 30 words, own words",
          "source_title": "string",
          "source_url": "https://..."
        }
      ]
    }
  ],
  "area_notes": [
    {"area": "string", "risk_tags": ["pattern id"], "note": "string, max 30 words"}
  ],
  "general_precautions": ["string", "..."],
  "official_verification_links": [
    {"name": "string", "url": "https://...", "purpose": "string"}
  ],
  "rate_snapshot": {
    "city": "string",
    "as_of": "YYYY-MM-DD",
    "stamp_duty_pct": {"male": number, "female": number, "joint_male_female": number},
    "includes_metro_cess": boolean,
    "registration_pct": number,
    "registration_cap_inr": integer,
    "gst_pct": {"under_construction_standard": number, "under_construction_affordable": number, "ready_with_oc": number, "resale": number},
    "affordable_housing": {"max_carpet_sqm_metro": number, "max_value_inr": integer},
    "tds_pct_if_value_at_least": {"pct": number, "threshold_inr": integer},
    "sources": [{"title": "string", "url": "https://..."}]
  },
  "notes": ["optional string", "..."]
}

Before answering, check: valid JSON (double quotes, no trailing commas), every case has a real source_url you opened, no summary over 30 words.
```

## PROMPT ends

---

## Field reference (for the app)

| Field | Used by the app for |
|---|---|
| `scam_patterns[].applies_to_status` | Filters patterns shown for the property's status |
| `scam_patterns[].applies_to_areas` | Boosts patterns when the property's area matches (`all` = always shown) |
| `severity` | Sort order and colour (critical/high = red, medium = amber, low = grey) |
| `red_flags` | Shown as "Watch for" list |
| `prevention_checks` | Added to the property's checklist as tickable items |
| `recent_cases` | "Recent cases" expandable list with source links |
| `area_notes` | Banner on a property whose area matches |
| `rate_snapshot` | Offered as "Update default rates?" in Settings (never auto-applied) |
| `as_of` | Shown in the app; older than 6 months shows a "data may be outdated" note |
