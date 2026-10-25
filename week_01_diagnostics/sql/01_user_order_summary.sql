SELECT
    u.name,
    SUM(o.amount) AS orders_sum,
    COALESCE(COUNT(o.order_id), 0) AS count_orders
FROM users AS u
LEFT JOIN orders AS o
    ON u.user_id = o.user_id
GROUP BY u.user_id, u.name;