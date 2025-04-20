-- SUBQUERY USAGE WITH DELETE

-- QUESTION 1

-- DELETE FROM zomato.`users (1)`
-- WHERE user_id IN (SELECT user_id FROM zomato.`users (1)`
-- WHERE user_id NOT IN (SELECT DISTINCT(user_id) FROM zomato.`orders (1)`))

DELETE FROM zomato.userss
WHERE user_id IN (
    SELECT user_id FROM (
        SELECT user_id
        FROM zomato.userss
        WHERE user_id NOT IN (
            SELECT DISTINCT user_id
            FROM zomato.orderss
        )
    ) AS temp
);