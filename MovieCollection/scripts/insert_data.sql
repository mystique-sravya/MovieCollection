-- Insert sample data into Movies table
INSERT INTO Movies (title, director, genre, release_year, rating) VALUES
('The Shawshank Redemption', 'Frank Darabont', 'Drama', 1994, 9.3),
('The Godfather', 'Francis Ford Coppola', 'Crime', 1972, 9.2),
('The Dark Knight', 'Christopher Nolan', 'Action', 2008, 9.0),
('Pulp Fiction', 'Quentin Tarantino', 'Crime', 1994, 8.9),
('The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Adventure', 2003, 8.9),
('Forrest Gump', 'Robert Zemeckis', 'Drama', 1994, 8.8),
('Inception', 'Christopher Nolan', 'Action', 2010, 8.8),
('Fight Club', 'David Fincher', 'Drama', 1999, 8.8),
('The Matrix', 'The Wachowskis', 'Sci-Fi', 1999, 8.7),
('Goodfellas', 'Martin Scorsese', 'Biography', 1990, 8.7);

-- Insert sample data into Actors table
INSERT INTO Actors (name, birth_year) VALUES
('Tim Robbins', 1958),
('Morgan Freeman', 1937),
('Marlon Brando', 1924),
('Al Pacino', 1940),
('Christian Bale', 1974),
('Heath Ledger', 1979),
('John Travolta', 1954),
('Samuel L. Jackson', 1948),
('Elijah Wood', 1981),
('Tom Hanks', 1956);

-- Insert unique sample data into MovieActors table
INSERT INTO MovieActors (movie_id, actor_id) VALUES
(1, 1), (1, 2), 
(2, 3), (2, 4), 
(3, 5), (3, 6), 
(4, 7), (4, 8), 
(5, 9), (5, 10),
(6, 1), (6, 2),
(7, 5), (7, 10),
(8, 7), (8, 8),
(9, 9), (9, 3),
(10, 4), (10, 6);
