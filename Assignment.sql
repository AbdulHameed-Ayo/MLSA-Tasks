# Question 1
SELECT id,account_id,total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;

#Question 2
SELECT id,account_id,total_amt_usd
FROM orders
ORDER BY total_amt_usd
LIMIT 20;

#Question 3
SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;

#Question 4 
SELECT 
(poster_amt_usd/(standard_amt_usd+gloss_amt_usd+poster_amt_usd))*100
FROM new_schema.orders;

#Question 5
SELECT *
FROM web_events
WHERE channel = 'organic'
OR channel = 'adwords';

#Question 6
SELECT name,primary_poc,sales_rep_id
FROM accounts
WHERE name = 'Walmart'
OR name = 'Target'
OR name = 'Nordstrom';

#Question 7
(a)
SELECT *
FROM accounts
WHERE name LIKE 'c%'
(b)
SELECT *
FROM accounts
WHERE name LIKE '%one%'
(c)
SELECT *
FROM accounts
WHERE name LIKE '%s'

