-- Traditional

CREATE KEYSPACE movielens WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3};

USE movielens;

-- Access Patterns

-- Q1
CREATE TABLE movies (
	title TEXT,
	date INT,
	PRIMARY KEY (title)
);

-- Q2
CREATE TABLE genres (
	name TEXT,
	PRIMARY KEY (name)
);

-- Q3
CREATE TABLE genres_by_movie (
	movie_title TEXT,
	genre_name TEXT,
	PRIMARY KEY (movie_title)
);

-- Q4
CREATE TABLE genre_stats (
	genre_name TEXT,
	movie_count COUNTER,
	PRIMARY KEY (genre_name)
);

-- Q5
CREATE TABLE users (
	id UUID,
	-- lastname TEXT,
	-- firstname TEXT,
	sex TEXT,
	age INT,
	occupation TEXT,
	zip_code TEXT,
	PRIMARY KEY (id)
);

-- Q6
CREATE TABLE movie_stats (
	movie_title TEXT,
	num_ratings COUNTER,
	sum_ratings COUNTER,
	average_rating COUNTER,
	PRIMARY KEY (movie_title)
);

-- Q7
CREATE TABLE ratings_by_movie (
	movie_title TEXT,
	user_id UUID,
	rating INT,
	PRIMARY KEY (movie_title)
);

-- Q8
CREATE TABLE ratings_by_user (
	user_id UUID,
	movie_title TEXT,
	movie_date INT,
	rating INT,
	PRIMARY KEY (user_id)
);

-- Q9
CREATE TABLE user_rating_stats (
	user_id UUID,
	num_ratings COUNTER,
	PRIMARY KEY (user_id)
);

-- Q10
CREATE TABLE user_rating_rank_10 (
	user_id UUID,
	user_sex TEXT,
	user_age INT,
	user_occupation TEXT,
	user_zip_code TEXT,
	num_ratings INT,
	PRIMARY KEY (user_id)
);

-- Q11
CREATE TABLE movie_rating_most (
	movie_title TEXT,
	movie_date INT,
	num_ratings INT,
	PRIMARY KEY (movie_title)
);

-- Q12
CREATE TABLE movie_rated_once_5 (
	movie_title TEXT,
	movie_date INT,
	PRIMARY KEY (movie_title)
);

-- Q13, Q14
CREATE TABLE movie_rating_rank (
	movie_title TEXT,
	movie_date INT,
	average_rating FLOAT,
	PRIMARY KEY (movie_title)
);

-- Q15
CREATE TABLE movies_by_genre (
	genre_name TEXT,
	movie_title TEXT,
	movie_date INT,
	PRIMARY KEY (genre_name)
);

-- Q16
CREATE TABLE top_movies_by_genre (
	genre_name TEXT,
	movie_title TEXT,
	movie_date INT,
	average_rating FLOAT,
	PRIMARY KEY (genre_name)
);
