-- Drop existing tables if they exist
DROP TABLE IF EXISTS MovieActors;
DROP TABLE IF EXISTS Actors;
DROP TABLE IF EXISTS Movies;

-- Create the Movies table
CREATE TABLE Movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    director TEXT,
    genre TEXT,
    release_year INTEGER,
    rating REAL
);

-- Create the Actors table
CREATE TABLE Actors (
    actor_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    birth_year INTEGER
);

-- Create the MovieActors table to handle many-to-many relationships
CREATE TABLE MovieActors (
    movie_id INTEGER,
    actor_id INTEGER,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies (movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors (actor_id)
);
