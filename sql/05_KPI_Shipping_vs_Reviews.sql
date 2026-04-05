
SELECT 
    r.review_score,
    AVG(DATEDIFF(day, o.order_purchase_timestamp, o.order_delivered_customer_date)) AS Avg_Shipping_Days
FROM olist_orders_dataset o
JOIN olist_order_reviews_dataset r 
  ON o.order_id = r.order_id
WHERE 
    o.order_delivered_customer_date IS NOT NULL
GROUP BY 
    r.review_score
ORDER BY 
    r.review_score DESC;