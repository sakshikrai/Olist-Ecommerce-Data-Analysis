USE Olist_Ecommerce;

SELECT 
    CASE 
        WHEN o.order_purchase_timestamp IS NULL THEN 'Missing Date'
        WHEN DATENAME(weekday, o.order_purchase_timestamp) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END AS Day_Type,
    SUM(p.payment_value) AS Total_Revenue
FROM olist_orders_dataset o
RIGHT JOIN olist_order_payments_dataset p 
  ON o.order_id = p.order_id
GROUP BY 
    CASE 
        WHEN o.order_purchase_timestamp IS NULL THEN 'Missing Date'
        WHEN DATENAME(weekday, o.order_purchase_timestamp) IN ('Saturday', 'Sunday') THEN 'Weekend'
        ELSE 'Weekday'
    END
ORDER BY 
    Total_Revenue DESC;