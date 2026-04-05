USE Olist_Ecommerce;

SELECT 
    -- 1. Total Orders
    (SELECT COUNT(DISTINCT order_id) 
     FROM olist_orders_dataset) AS Total_Orders,

    -- 2. Total Revenue (Gross)
    (SELECT SUM(payment_value) 
     FROM olist_order_payments_dataset) AS Total_Revenue,

    -- 3. Average Order Value (Total Revenue / Total Orders)
    (SELECT SUM(payment_value) FROM olist_order_payments_dataset) / 
    (SELECT COUNT(DISTINCT order_id) FROM olist_orders_dataset) AS Average_Order_Value,

    -- 4. Average Delivery Days
    (SELECT AVG(CAST(DATEDIFF(day, order_purchase_timestamp, order_delivered_customer_date) AS FLOAT)) 
     FROM olist_orders_dataset 
     WHERE order_delivered_customer_date IS NOT NULL) AS Avg_Delivery_Days,

    -- 5. Average Review Score
    (SELECT AVG(CAST(review_score AS FLOAT)) 
     FROM olist_order_reviews_dataset) AS Avg_Review_Score;