USE Olist_Ecommerce;

SELECT 
    COUNT(DISTINCT o.order_id) AS Total_5_Star_Credit_Card_Orders
FROM olist_orders_dataset o
JOIN olist_order_reviews_dataset r 
  ON o.order_id = r.order_id
JOIN olist_order_payments_dataset p 
  ON o.order_id = p.order_id
WHERE 
    r.review_score = 5 
    AND p.payment_type = 'credit_card';