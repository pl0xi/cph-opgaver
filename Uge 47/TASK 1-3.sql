/* 1. Queries in MySQL Workbench. */ 
USE sakila;
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name = "CAGE";
SELECT * FROM actor WHERE first_name != "ZERO" AND first_name != "NICK";
SELECT * FROM actor WHERE first_name IN ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOP");
SELECT * FROM actor WHERE actor_id >= 50 AND actor_id <= 150;
SELECT * FROM actor WHERE first_name LIKE "C%";
SELECT * FROM actor ORDER BY first_name;
SELECT * FROM actor ORDER BY last_name DESC;
SELECT COUNT(*) FROM actor;
SELECT COUNT(DISTINCT first_name) FROM actor;
SELECT * FROM film WHERE rental_duration IN (5, 7); 
SELECT title AS "Movies" FROM film;

/* 2. More queries */
INSERT INTO actor (first_name, last_name) VALUES ("Benjamin", "Sommervoll");
INSERT INTO film_actor (actor_id, film_id) VALUES (201, 1), (201, 2), (201, 3), (201, 4), (201, 5);
UPDATE actor SET first_name = "yee", last_name = "cheez" WHERE first_name = "Benjamin" AND last_name = "Sommervoll";
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM actor WHERE first_name IN ("yee") AND last_name IN ("cheez");
SET FOREIGN_KEY_CHECKS=1;

/* 3. JOINS */
SELECT * FROM category;
SELECT * FROM film_category;
SELECT * FROM film;
SELECT * FROM film INNER JOIN film_category ON film.film_id = film_category.film_id WHERE film_category.category_id = 7;