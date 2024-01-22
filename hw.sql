
-- 1. List all customers who live in Texas (use
-- JOINs)
SELECT customers.name, addresses.state 
FROM customers 
INNER JOIN addresses 
ON customers.address_id = addresses.id 
WHERE addresses.state = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
SELECT customer_fullname
FROM customer
INNER JOIN payment 
ON customer_id = payment.customer_id
WHERE payment.amount > 6.99;

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)

SELECT name
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM payments
    WHERE amount > 175
);
-- 4. List all customers that live in Nepal (use the city
-- table)
SELECT city_id
FROM address_id
JOIN city_id ON address_id.city_id = city_id.city_id
JOIN country_id ON city_id.country_id = country_id.country_id
WHERE country_id.country_name = 'Nepal'

-- 5. Which staff member had the most
-- transactions?

SELECT s.name, COUNT(t.transaction_id) as transaction_count
FROM staff s
JOIN transactions t ON s.staff_id = t.staff_id
GROUP BY s.name
ORDER BY transaction_count DESC
LIMIT 1;
-- 6. How many movies of each rating are
-- there?

-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

-- 8. How many free rentals did our store give away?