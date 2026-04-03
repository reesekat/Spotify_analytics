DROP DATABASE spotify_analytics;
CREATE DATABASE spotify_analytics CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE spotify_analytics;

CREATE TABLE dim_genre (
    genre_id INT PRIMARY KEY,
    genre_name TEXT
);

CREATE TABLE dim_artist (
    artist_id INT PRIMARY KEY,
    artist_name TEXT
);

CREATE TABLE fact_tracks (
    track_id VARCHAR(100) PRIMARY KEY,
    album_name TEXT,
    track_name TEXT,
    popularity INT,
    duration_ms INT,
    explicit BOOLEAN,
    danceability FLOAT,
    energy FLOAT,
    musical_key INT,
    loudness FLOAT,
    mode INT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    time_signature INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES dim_genre(genre_id)
);

CREATE TABLE bridge_track_artist (
    track_id VARCHAR(100),
    artist_id INT,
    FOREIGN KEY (track_id) REFERENCES fact_tracks(track_id),
    FOREIGN KEY (artist_id) REFERENCES dim_artist(artist_id)
);

SELECT COUNT(*) FROM dim_genre;
SELECT COUNT(*) FROM dim_artist;
SELECT COUNT(*) FROM fact_tracks;
SELECT COUNT(*) FROM bridge_track_artist;


-- Query 1: Top 5 genres by average popularity
-- Business question: Which genres have the highest average popularity on Spotify?
SELECT d.genre_name, ROUND(AVG(f.popularity), 2) AS avg_popularity
FROM fact_tracks f
INNER JOIN dim_genre d ON f.genre_id = d.genre_id
GROUP BY d.genre_name
ORDER BY avg_popularity DESC
LIMIT 10;


DESCRIBE dim_artist;   -- artist id,artist name
DESCRIBE bridge_track_artist; -- trackid,artist id
describe dim_genre;
describe fact_tracks;

select d.artist_name,count(b.track_id) as number_of_tracks from dim_artist d 
inner join bridge_track_artist b on d.artist_id=b.artist_id 
group by d.artist_name order by number_of_tracks desc limit 10;