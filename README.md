#  Spotify Music Analytics — End-to-End Data Analytics Project

**Author:** Srilakshmi N P | [GitHub](https://github.com/reesekat)

---

##  Project Overview
An end-to-end data analytics project analyzing 114,000 Spotify tracks to uncover 
what drives music popularity, how audio features relate to listener behavior, 
and where Spotify's biggest content opportunities lie.

Built as a portfolio project modelled on industry-standard analytical deliverables.

---

##  Business Questions Answered
- Which genres dominate Spotify in terms of popularity?
- Does explicit content affect track performance?
- What audio features define a popular track?
- Which genres make listeners feel the most positive?
- Do high-energy tracks perform better than calm ones?
- What is the optimal track duration for mainstream success?
- How do audio features correlate with each other and with popularity?

---

##  Tools & Technologies
| Tool | Purpose |
|------|---------|
| Python (pandas, seaborn, matplotlib) | Data cleaning, EDA, visualisation |
| MySQL | Relational database, SQL analysis |
| Jupyter Notebook | Analysis environment |

---

##  Data Model — Star Schema
The raw dataset was normalized into a proper relational schema:

- **fact_tracks** — 114,000 tracks with audio features and popularity metrics
- **dim_genre** — 114 unique genres
- **dim_artist** — 29,000+ unique artists
- **bridge_track_artist** — many-to-many relationship between tracks and artists

---

##  EDA Highlights

### Chart 4 — Explicit vs Non-Explicit Popularity
Explicit tracks average 36.45 popularity vs 32.94 for non-explicit.
Spotify's algorithm does not penalise explicit content in discovery.

### Chart 5 — Energy vs Popularity
Sweet spot is moderate-to-high energy (0.50–0.75). Very high energy drops off
due to niche metal audiences limiting mainstream reach.

### Chart 6 — Happiest Genres by Valence
Salsa, forro and samba lead — culturally rooted genres with growing global 
appeal among Gen Z dance communities.

### Chart 7 — Audio Feature Correlation Heatmap
No single feature strongly predicts popularity. Energy and acousticness
are near-perfect opposites (-0.73). Danceability and valence move together (0.49).

### Chart 8 — Track Duration Sweet Spot
3–5 minute tracks consistently outperform. Under 2 min fails to engage,
over 5 min loses listener attention.

### Chart 9 — Acoustic vs Energy Extremes
Classical and romance dominate acoustic. Death-metal and grindcore dominate energy.
"Happy" appearing in the energy top 10 is the standout anomaly.

---

##  SQL Analysis

| Query | Business Question |
|-------|------------------|
| Query 1 | Top 10 genres by average popularity |
| Query 2 | Top 10 most prolific artists by track count |
| Query 3 | Explicit vs non-explicit — popularity, danceability, energy |
| Query 4 | Top 3 tracks per genre using RANK() window function |
| Query 5 | Audio feature profile of top 10 genres |

---

##  Key Findings
1. **K-pop and pop-film dominate popularity** — culturally driven genres outperform traditional ones
2. **Explicit tracks slightly outperform** — driven by hip-hop and rap dominance
3. **No single audio feature predicts popularity** — it is multi-dimensional
4. **3–5 minutes is the optimal track length** for mainstream success
5. **Acoustic and energy are opposites** — two completely different listener worlds exist on Spotify

## File Structure
├── spotify_eda.ipynb           # Main analysis notebook
├── sql_analysis2.sql           # All SQL queries
├── dim_genre.csv               # Genre dimension table
├── dim_artist.csv              # Artist dimension table
├── fact_tracks.csv             # Fact table
├── bridge_track_artist.csv     # Bridge table
└── README.md                   # This file


---

##  Project Status
**In Progress** — SQL analysis and EDA complete. Final report and recommendations section coming soon.

---

*Dataset: Spotify Tracks Dataset — 114,000 tracks across 114 genres*
