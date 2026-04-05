SELECT 
    AVG(CAST(DATEDIFF(day, o.order_purchase_timestamp, o.order_delivered_customer_date) AS FLOAT)) AS Avg_Delivery_Days_PetShop
FROM olist_orders_dataset o
JOIN olist_order_items_dataset i 
  ON o.order_id = i.order_id
JOIN olist_products_dataset p 
  ON i.product_id = p.product_id
JOIN product_category_name_translation t 
  ON p.product_category_name = t.product_category_name  
WHERE 
    t.product_category_name_english = 'pet_shop'                
    AND o.order_delivered_customer_date IS NOT NULL;