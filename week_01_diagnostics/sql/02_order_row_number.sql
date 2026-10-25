SELECT
    o.order_id,
    o.user_id,
    o.amount,
    ROW_NUMBER() OVER (
        PARTITION BY o.user_id
        ORDER BY o.amount
    ) AS price_sorted_orders_per_user_low_to_high
FROM orders AS o;