-- 1. List all customers (name + email), ordered alphabetically (no extra information)

SELECT first_name, last_name, email
FROM customers
ORDER BY first_name ASC