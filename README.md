
### Folder Structure

Here's the folder structure for your project:

```
MovieCollection/
├── analysis/
│   └── analysis_results.txt
├── scripts/
│   ├── analysis_queries.sql
│   ├── create_tables.sql
│   └── insert_data.sql
├── movie_collection.db
├── README.md
```

### `README.md` File

```markdown
# Movie Collection Database

This project is a simple movie collection database using SQLite. It allows for storing information about movies, actors, and their associations.

## Project Description

The Movie Collection Database project provides a structure for storing and managing information about movies, their genres, directors, and associated actors.

## Getting Started

### Prerequisites

- SQLite: Ensure SQLite is installed on your system. You can download it from [SQLite Downloads](https://www.sqlite.org/download.html).

### Setting Up the Project

1. **Clone the repository** (if applicable):
   ```sh
   git clone https://github.com/yourusername/MovieCollection.git
   cd MovieCollection
   ```

2. **Create the SQLite database**:
   - Open your terminal or command prompt.
   - Navigate to the SQLite installation directory:
     ```sh
     cd C:\sqlite
     ```
   - Create the database in the project directory:
     ```sh
     sqlite3 D:/MovieCollection/movie_collection.db
     ```

3. **Create tables**:
   - Open the SQLite shell and run the SQL script to create tables:
     ```sh
     .read D:/MovieCollection/scripts/create_tables.sql
     ```

4. **Insert sample data**:
   - Run the SQL script to insert sample data:
     ```sh
     .read D:/MovieCollection/scripts/insert_data.sql
     ```

5. **Run analysis queries**:
   - Execute the queries for analysis:
     ```sh
     .read D:/MovieCollection/scripts/analysis_queries.sql
     ```

### Project Usage

You can perform various operations such as adding movies, adding actors, associating actors with movies, and querying the data. Below are some sample queries:

- **Count the total number of movies**:
  ```sql
  SELECT COUNT(*) AS total_movies FROM Movies;
  ```

- **List all movies by a specific director**:
  ```sql
  SELECT * FROM Movies WHERE director = 'Christopher Nolan';
  ```

- **List all actors in a specific movie**:
  ```sql
  SELECT a.name FROM Actors a
  JOIN MovieActors ma ON a.actor_id = ma.actor_id
  JOIN Movies m ON ma.movie_id = m.movie_id
  WHERE m.title = 'The Shawshank Redemption';
  ```

## Analysis

Analysis queries and results are stored in the `analysis` directory.

### Analysis Queries

See `scripts/analysis_queries.sql` for the SQL queries used for basic and advanced analysis.

### Analysis Results

See `analysis/analysis_results.txt` for analysis results.

