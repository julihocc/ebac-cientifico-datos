-- Active: 1730414369362@@127.0.0.1@5432@dvdrental@public
-- 1. Vamos a seleccionar el nombre y apellido de los actores
SELECT first_name, last_name FROM actor;

-- 2. Vamos a seleccionar el nombre completo del actor en una sola columna
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM actor;

-- 3. Selecciona los actores que su nombre empieza con "D"
SELECT first_name, last_name FROM actor WHERE first_name LIKE 'D%';

-- 4. ¿Tenemos algún actor con el mismo nombre?
SELECT first_name, COUNT(*) FROM actor GROUP BY first_name HAVING COUNT(*) > 1;

-- 5. ¿Cuál es el costo máximo de renta de una película?
SELECT MAX(rental_rate) FROM film;

-- 6. ¿Cuáles son las peliculas que fueron rentadas con ese costo?
SELECT title FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 7. ¿Cuantás películas hay por el tipo de audencia (rating)?
SELECT rating, COUNT(*) FROM film GROUP BY rating;

-- 8. Selecciona las películas que no tienen un rating R o NC-17
SELECT title FROM film WHERE rating NOT IN ('R', 'NC-17');

-- 9. ¿Cuantos clientes hay en cada tienda?
SELECT store_id, COUNT(*) FROM customer GROUP BY store_id;

-- 10. ¿Cuál es la pelicula que mas veces se rento?
SELECT film.title, COUNT(rental.rental_id) AS rental_count
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
GROUP BY film.title
ORDER BY rental_count DESC
LIMIT 1;