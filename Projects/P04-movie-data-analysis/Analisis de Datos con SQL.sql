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

-- 11. ¿Qué peliculas no se han rentado?
SELECT title 
FROM film 
WHERE film_id NOT IN (SELECT film_id FROM inventory WHERE inventory_id IN (SELECT inventory_id FROM rental));

-- 12. ¿Qué clientes no han rentado ninguna película?
SELECT first_name, last_name 
FROM customer 
WHERE customer_id NOT IN (SELECT customer_id FROM rental);

-- 13. ¿Qué actores han actuado en más de 30 películas?
SELECT actor.first_name, actor.last_name, COUNT(film_actor.film_id) AS film_count
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
HAVING COUNT(film_actor.film_id) > 30;

-- 14. Muestra las ventas totales por tienda
SELECT store.store_id, SUM(payment.amount) AS total_sales
FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN store ON inventory.store_id = store.store_id
GROUP BY store.store_id;

-- 15. Muestra los clientes que rentaron una pelicula más de una vez
WITH rental_counts AS (
    SELECT customer_id, inventory_id, COUNT(*) AS rental_count
    FROM rental
    GROUP BY customer_id, inventory_id
)
SELECT customer.first_name, customer.last_name, rental_counts.rental_count
FROM rental_counts
JOIN customer ON rental_counts.customer_id = customer.customer_id
WHERE rental_counts.rental_count > 1;