--1
SELECT COUNT(*) FROM film WHERE length >
(SELECT AVG(length) FROM film);

--2
SELECT COUNT(*) FROM film WHERE rental_rate = 
(SELECT MAX(rental_Rate) FROM film);

--3
(SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = 
(
	SELECT MIN(rental_rate) FROM film
) AND replacement_cost = 
(
	SELECT MIN(replacement_cost) FROM film
));

--4
SELECT first_name, last_name FROM customer JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, first_name, last_name
ORDER BY SUM(amount) DESC;