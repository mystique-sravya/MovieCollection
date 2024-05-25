-- Basic Analysis Queries

-- Total Number of Movies
SELECT COUNT(*) AS total_movies FROM Movies;

-- Total Number of Actors
SELECT COUNT(*) AS total_actors FROM Actors;

-- Movies by Genre
SELECT genre, COUNT(*) AS number_of_movies
FROM Movies
GROUP BY genre;

-- Actors by Movie Participation
SELECT Actors.name, COUNT(MovieActors.movie_id) AS movies_count
FROM Actors
JOIN MovieActors ON Actors.actor_id = MovieActors.actor_id
GROUP BY Actors.name
ORDER BY movies_count DESC;

-- Movies Directed by Christopher Nolan
SELECT title, release_year, rating
FROM Movies
WHERE director = 'Christopher Nolan';

-- Actors in The Shawshank Redemption
SELECT Actors.name
FROM Actors
JOIN MovieActors ON Actors.actor_id = MovieActors.actor_id
JOIN Movies ON MovieActors.movie_id = Movies.movie_id
WHERE Movies.title = 'The Shawshank Redemption';

-- Advanced Analysis Queries

-- Average Movie Rating by Genre
SELECT genre, AVG(rating) AS average_rating
FROM Movies
GROUP BY genre;

-- Top 3 Highest Rated Movies
SELECT title, rating
FROM Movies
ORDER BY rating DESC
LIMIT 3;

-- Actors with the Most Appearances
SELECT Actors.name, COUNT(MovieActors.movie_id) AS appearances
FROM Actors
JOIN MovieActors ON Actors.actor_id = MovieActors.actor_id
GROUP BY Actors.name
ORDER BY appearances DESC
LIMIT 3;

-- Average Rating of Movies by Director
SELECT director, AVG(rating) AS average_rating
FROM Movies
GROUP BY director
ORDER BY average_rating DESC;

-- Movies with Multiple Genres
-- Uncomment the following lines if your database supports multiple genres per movie
-- SELECT title, COUNT(genre) AS genre_count
-- FROM Movies
-- GROUP BY title
-- HAVING genre_count > 1;

-- List of Actors Who Have Worked with a Specific Director
-- Example for 'Christopher Nolan'
SELECT DISTINCT Actors.name
FROM Actors
JOIN MovieActors ON Actors.actor_id = MovieActors.actor_id
JOIN Movies ON MovieActors.movie_id = Movies.movie_id
WHERE Movies.director = 'Christopher Nolan';
