-- SUBQUERY USAGE WITH UPDATE

-- QUESTION 1

UPDATE zomato.loyal_customer
SET money = (SELECT SUM(amount)
FROM zomato.orderss
WHERE orderss.user_id = loyal_customer.user_id
)