SELECT
    customer_id,
    SUM(order_amount) AS total_sales
FROM raw.orders
GROUP BY customer_id;
