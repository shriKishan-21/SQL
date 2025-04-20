-- SUBQUERY USAGE WITH INSERT

-- QUESTION 1
CREATE TABLE loyal_customer(
    user_id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    money INTEGER NOT NULL
);

INSERT INTO zomato.loyal_customer
(name , user_id)
SELECT name , t1.user_id
FROM zomato.orderss t1
JOIN zomato.userss t2
ON t1.user_id = t2.user_id
GROUP BY user_id , name
HAVING COUNT(*) > 3;

