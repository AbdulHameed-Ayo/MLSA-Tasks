#Question 1
SELECT A.name, S.name, R.namee
FROM accounts A
JOIN sales_reps S
	ON A.sales_rep_id = S.id
JOIN region R
	ON S.region_id = R.id
WHERE R.namee = 'Midwest'
ORDER BY A.name;

# Question 2
SELECT A.name, S.name, R.namee
FROM accounts A
JOIN sales_reps S
	ON A.sales_rep_id = S.id
JOIN region R
	ON S.region_id = R.id
WHERE R.namee = 'Midwest'
AND S.name LIKE 's%'
ORDER BY A.name;

#Question 3
SELECT A.name, S.name, R.namee
FROM accounts A
JOIN sales_reps S
	ON A.sales_rep_id = S.id
JOIN region R
	ON S.region_id = R.id
WHERE R.namee = 'Midwest'
AND S.name LIKE '&K&'
ORDER BY A.name;

#Question 4
SELECT A.name,R.namee,O.total_amt_usd/(O.total+0.01) AS unit_price
FROM accounts A
JOIN sales_reps S
	ON A.sales_rep_id = S.id
JOIN region R
	ON S.region_id = R.id
JOIN orders O
	ON O.account_id = A.id
WHERE O.standard_qty > 100 
ORDER BY 1;

#Question 5
SELECT A.name,R.namee,O.total_amt_usd/(O.total+0.01) AS unit_price
FROM accounts A
JOIN sales_reps S
	ON A.sales_rep_id = S.id
JOIN region R
	ON S.region_id = R.id
JOIN orders O
	ON O.account_id = A.id
WHERE O.standard_qty > 100 
AND O.poster_qty > 50
ORDER BY 1;


#Question 7
SELECT DISTINCT A.name, W.channel
FROM accounts A
JOIN web_events W
	ON A.id = W.account_id
WHERE W.account_id = 1001
;

#Question 8
SELECT O.occurred_at, A.name, O.total,O.total_amt_usd
FROM accounts A
JOIN orders O
	ON A.id = O.account_id
WHERE O.occurred_at LIKE '2015%';


