CREATE SCHEMA `MovieLens` DEFAULT CHARACTER SET utf8 ;

USE `MovieLens`;

DROP TABLE `movies`;
CREATE TABLE `movies` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
    `date` INT NOT NULL
);

DROP TABLE `users`;
CREATE TABLE `users` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `age` TINYINT NOT NULL,
    `sex` CHAR(1) NOT NULL,
    `occupation` VARCHAR(64) NOT NULL,
    `zip_code` INT NOT NULL
);

DROP TABLE `genres`;
CREATE TABLE `genres` (
	`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);

DROP TABLE `movie_genre`;
CREATE TABLE `movie_genre` (
	`movie_id` INT NOT NULL,
    `genre_id` INT NOT NULL,
    PRIMARY KEY (`movie_id`, `genre_id`),
    FOREIGN KEY (`movie_id`) REFERENCES `movies`(`id`),
    FOREIGN KEY (`genre_id`) REFERENCES `genres`(`id`)
);

DROP TABLE `ratings`;
CREATE TABLE `ratings` (
	`user_id` INT NOT NULL,
    `movie_id` INT NOT NULL,
    `rating` TINYINT NOT NULL,
    PRIMARY KEY (`user_id`, `movie_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`movie_id`) REFERENCES `movies`(`id`)
);

DROP TABLE `friends`;
CREATE TABLE `friends` (
	`user_id_1` INT NOT NULL,
    `user_id_2` INT NOT NULL,
    PRIMARY KEY (`user_id_1`, `user_id_2`),
    FOREIGN KEY (`user_id_1`) REFERENCES `users`(`id`),
    FOREIGN KEY (`user_id_2`) REFERENCES `users`(`id`)
);
