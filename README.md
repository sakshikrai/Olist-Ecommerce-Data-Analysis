# Olist E-Commerce Performance Dashboard (Excel)

## 📌 Project Overview
This project is an end-to-end data analysis and visualization of the **Olist E-commerce Dataset** (a Brazilian e-commerce platform). The dataset consists of 9 distinct CSV files totaling approximately 45MB of raw data, containing over 100,000 orders. 

The objective of this project was to clean, transform, and model this large dataset entirely within Microsoft Excel to extract actionable business insights and present them in a fully interactive executive dashboard.

## 🛠️ Tools & Technologies Used
* **Microsoft Excel:** Primary tool for analysis and visualization.
* **Power Query:** Used for ETL (Extract, Transform, Load). Tasks included merging tables to bypass filter direction issues, formatting messy timestamps, creating conditional columns (Weekday/Weekend), and calculating delivery durations.
* **Power Pivot (Data Model):** Built a relational database structure connecting the 9 tables via 1-to-Many relationships to handle the large data volume without relying on slow `VLOOKUP` formulas.
* **Pivot Tables & Pivot Charts:** Used to aggregate data and build the visual components of the dashboard.

## 📊 Key Performance Indicators (KPIs) Analyzed

1. **Payment Trends:** Analyzed the total payment value generated on Weekdays versus Weekends to understand peak shopping behaviors.
2. **Top-Tier Orders:** Calculated the total count of flawless transactions (Orders with a perfect 5-star review score paid via credit card).
3. **Shipping Efficiency:** Determined the average number of days taken for delivery specifically within the 'pet_shop' product category.
4. **Regional Order Value:** Extracted the average item price and average payment value specifically for customers located in São Paulo.
5. **Customer Satisfaction:** Mapped the direct relationship between the number of shipping days and the resulting customer review scores.

## 📸 Dashboard Preview
*(Note: Drag and drop your screenshot image here when editing on GitHub)*

## 💡 Key Business Insights
* **Faster Delivery Drives Perfect Ratings:** The data reveals a perfect negative correlation between shipping time and customer satisfaction. 1-star reviews averaged over 21 days for delivery, while 5-star reviews averaged just 10.6 days.
* **Revenue is Weekday-Heavy:** A massive ~77% of all payment value (11.9M) is processed on weekdays compared to just ~23% (3.5M) on weekends, suggesting marketing ad spend should be heavily weighted toward Monday-Friday.
* **São Paulo Order Value:** Customers in São Paulo have an average item price of ~106.87, with an average total checkout payment of ~134.30 (indicating an average freight cost of ~$27).

## 🚀 How to Interact with this Project
1. Download the `Olist_Ecommerce_Dashboard.xlsx` file from this repository.
2. Open the file in Microsoft Excel.
3. Navigate to the **Dashboard** tab.
4. Use the interactive Slicers (buttons) on the dashboard to filter the charts dynamically by **Payment Type** or **Customer City**.
