CREATE KEYSPACE movielens WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3};

USE movielens;

# Question 1
CREATE TABLE movie_rating_stats (
	movie_id INT,
	num_ratings counter,
	sum_ratings counter,
	average_ratings counter,
	PRIMARY KEY (movie_id)
);

# Question 2
CREATE TABLE genres_by_movie (
	movie_id INT,
	genre_id INT,
	genre_name TEXT,
	PRIMARY KEY (movie_id)
);

# Question 3
CREATE TABLE genre_stats (
	genre_id INT,
	genre_name TEXT,
	movie_count counter,
	PRIMARY KEY (genre_id)
) WITH CLUSTERING ORDER BY (genre_name ASC);

# Question 4
CREATE TABLE ratings_by_movie (
	movie_id INT,
	movie_name TEXT,
	user_id INT,
	user_name TEXT,
	rating_rating INT,
	PRIMARY KEY (movie_id)
) WITH CLUSTERING ORDER BY (movie_name ASC);

# Question 5
# ? table notes
CREATE TABLE notes_by_user (
	user_id INT,
	user_name TEXT,
	movie_id INT,
	movie_name TEXT,
	note TEXT,
	PRIMARY KEY (user_id)
);
