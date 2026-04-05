---Query 1: The True Average Price

SELECT AVG(i.price) AS True_Avg_Price
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
JOIN olist_order_items_dataset i ON o.order_id = i.order_id
WHERE c.customer_city = 'sao paulo';

---Query 2: The True Average Payment

SELECT AVG(p.payment_value) AS True_Avg_Payment
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
JOIN olist_order_payments_dataset p ON o.order_id = p.order_id
WHERE c.customer_city = 'sao paulo';