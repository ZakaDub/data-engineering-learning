SELECT
    u.user_id,
    u.name,
    COALESCE(SUM(o.amount), 0) AS orders_sum,
    COUNT(o.order_id) AS count_orders
FROM users AS u
LEFT JOIN orders AS o
    ON u.user_id = o.user_id
GROUP BY u.user_id, u.name;