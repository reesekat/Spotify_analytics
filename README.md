# Spotify_analytics

This project simulates how Spotify processes raw listening events
to generate analytics and insights using
SQL, Python, and a data warehouse design.

# Spotify Content Analysis (SQL + Python)

## Business Problem
Spotify hosts millions of tracks across diverse genres and artists. 
Understanding which content characteristics drive track popularity is critical 
for playlist curation, content promotion, and user engagement.
This analysis examines Spotify track metadata and audio features to identify attributes associated with higher track popularity. SQL is used for structured analytics, while Python supports data validation and preparation.

## Dataset Overview

The dataset contains 114,000 tracks with 21 columns, including metadata, popularity metrics,
and audio features. Most columns have complete data with negligible missing values.
One non-informative column (`Unnamed: 0`) was identified as an index artifact from CSV export.

## Data Cleaning

- Removed non-informative CSV index column (`Unnamed: 0`).
- Validated data types for numerical and boolean fields.
- Confirmed negligible missing values.
  
## SQL Modeling

The dataset was transformed into a normalized relational schema:

- `fact_tracks` – Core measurable entity at track level
- `dim_genre` – Genre dimension
- `dim_artist` – Artist dimension
- `bridge_track_artist` – Many-to-many relationship table

## Data Modeling

This structure reduces redundancy, enforces relational integrity,
and enables scalable analytical queries using joins.

## Exploratory Analysis
## In-depth Analysis
## Insights & Recommendations

