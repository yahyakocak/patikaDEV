--1
SELECT * FROM city JOIN country ON city.country_id = country.country_id;

--2
SELECT payment_id, first_name, last_name FROM customer 
JOIN payment ON customer.customer_id = payment.customer_id;

--3
SELECT rental_id, first_name, last_name FROM customer 
JOIN rental ON customer.customer_id = rental.customer_id;