# Daszak v. EcoHealth Alliance: case explainer

A self-contained, tabbed HTML explainer for *Dr. Peter Daszak, Ph.D. v. EcoHealth Alliance Inc., Stephen Shapiro and 17 other directors*, New York Supreme Court, New York County, Commercial Division (Part 54, Justice Jennifer G. Schecter), Index No. 164611/2025.

It covers NYSCEF documents 1–71 (filed November 2025 – August 2026). The trial court dismissed the case on 28 July 2026, and Daszak filed a notice of appeal on 25 August 2026.

## Opening it

The page reads the PDFs through a PDF viewer that needs HTTP, so it will not show documents if you open the HTML file directly.

Run the launcher, which starts a local server on 127.0.0.1 and opens the page:

```sh
./Open_Case_Explainer.sh
```

Or do it by hand from this folder:

```sh
python3 -m http.server 8000 --bind 127.0.0.1
# then open http://127.0.0.1:8000/00_Case_Explainer.html
```

The viewer loads pdf.js from a CDN, so an internet connection is needed.

## What is in the page

| Tab | Content |
|---|---|
| 1. The dispute | The story, the basic timeline, the cast, the board, and the 6 January 2025 firing call, with tape quotes |
| 2. The legal pipeline | The document groups (A–H) and how the court decided |
| 3. The "broke" claim | What the record shows about Daszak's pay, the house, and the verdict |
| 4. Nature Health Global | Daszak's new nonprofit: its return, pay, funders, and checks against IRS data |

Features: four themes (Midnight, Slate, Paper, Day; Paper is the default), a collapsible and resizable contents panel, and a document pane at the side or bottom. The pane offers single-page, double-page and continuous views, zoom, and arrow-key navigation while the pointer or focus is in the pane. "doc N" references in the text open the matching PDF.

## Folder layout

| Path | Content |
|---|---|
| `00_Case_Explainer.html` | The explainer (single file; the house illustration is embedded) |
| `fillings/` | The 71 court PDFs, numbered by NYSCEF document number, plus `CV_3S.png` |
| `990/` | `NHG_Form990-EZ_2025_redacted.pdf`: Nature Health Global's Form 990-EZ with the street address, town and ZIP+4 redacted. The original filing is unchanged elsewhere |
| `Open_Case_Explainer.sh` | Local-server launcher |
| `other/` | Working material, **not tracked by git** (see `.gitignore`) and **not shown in the viewer** |

## Safety rules for edits

- Do not add Daszak's address or anything that points to it: no street, town, county or house name, no listing PDFs or photos, no previous owners' names.
- The CV in `fillings/` is a court document and stays as filed. Do not add notes pointing to it for contact details.
- Keep to what the documents and cited sources say. Leave interpretation of the merits to the court.
