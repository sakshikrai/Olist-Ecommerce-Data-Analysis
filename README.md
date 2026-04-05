# Olist E-Commerce Data Analysis: SQL, Excel & Tableau

## 📌 Project Overview
This project is an end-to-end data pipeline, analysis, and visualization of the Olist E-commerce Dataset (a Brazilian e-commerce platform). The raw dataset consists of 9 distinct relational CSV files totaling approximately 45MB and containing over 100,000 orders. 

The objective of this project was to extract, clean, and model this complex dataset using SQL and Excel Power Pivot, resolve advanced relational data traps, and present actionable business insights in fully interactive executive dashboards.

## 📊 Live Dashboard
**[Click here to view the interactive Tableau Dashboard](https://public.tableau.com/app/profile/sakshi.kumari5943/viz/Olist_Dashboard_17753875477300/OlistDashboard)**

## 📸 Dashboard Previews

### Tableau Executive Dashboard
![Tableau Dashboard](Tableau%20Dashboard.jpeg)

### Excel Power Pivot Dashboard
![Excel Dashboard](Excel%20Dashboard.jpeg)

## 🛠️ Tools & Technologies Used
* **SQL Server (SSMS):** Used for deep data exploration, querying, and establishing baseline mathematical truths. Handled complex aggregations and data extraction across millions of joined rows.
* **Microsoft Excel (Power Query & Power Pivot):** Used for advanced ETL processes (formatting timestamps, calculating delivery durations). Built a robust Star Schema relational database using 1-to-Many relationships to handle high data volume without slow `VLOOKUP` formulas. Wrote **DAX Measures** to force bi-directional cross-filtering.
* **Tableau:** Designed the final interactive executive dashboard featuring global slicers, dynamic geographic revenue mapping, and Level of Detail (LOD) calculations.

## 🧠 Technical Highlight: Solving the "Fan-Out" Trap
A major challenge in this relational dataset was the many-to-many Cartesian product (Fan-Out) trap. Because customers frequently purchase multiple items and use multiple payment methods in a single order, standard SQL `JOIN` functions duplicated rows, which artificially inflated Average Order Values (AOV). 
* **The SQL Fix:** I utilized Common Table Expressions (CTEs) to aggregate financial metrics on their native tables *before* executing the joins, locking in the true mathematical averages.
* **The Tableau & Excel Fix:** I aligned my visual tools with the SQL ground truth by writing explicit Level of Detail (LOD) expressions in Tableau and DAX `CALCULATE` measures in Excel to bypass the duplicated rows and establish perfect data integrity across all three platforms.

## 📈 Key Performance Indicators (KPIs) Analyzed
1. **Payment Trends:** Analyzed the total payment value generated on Weekdays versus Weekends to understand peak shopping behaviors.
2. **Top-Tier Orders:** Calculated the total count of flawless transactions (Orders with a perfect 5-star review score paid via credit card).
3. **Shipping Efficiency:** Determined the average number of days taken for delivery specifically within the 'pet_shop' product category.
4. **Regional Order Value:** Extracted the true average item price and average payment value specifically for customers located in São Paulo.
5. **Customer Satisfaction:** Mapped the direct relationship between the number of shipping days and the resulting customer review scores.

## 💡 Key Business Insights
* **Faster Delivery Drives Perfect Ratings:** The data reveals a perfect negative correlation between shipping time and customer satisfaction. 1-star reviews averaged over 21 days for delivery, while 5-star reviews arrived in just 10.6 days.
* **Revenue is Weekday-Heavy:** A massive ~77% of all payment value ($11.9M) is processed on weekdays compared to just ~23% ($3.5M) on weekends, suggesting marketing and ad spend should be heavily weighted toward Monday-Friday.
* **São Paulo Economics:** Customers in São Paulo have an average item price of ~$106.87, with an average total checkout payment of ~$134.30 (indicating an average freight/shipping cost of ~$27 per order).

## 🚀 How to Interact with this Project

### 1. The Web Dashboard (Tableau)
* Click the Tableau Public link at the top of this page.
* Use the dropdown global filters to dynamically slice the geographic map and KPI charts by Payment Type, Date, and Category.

### 2. The Data Model (Excel)
* Download the `Olist_Ecommerce_Dashboard.xlsx` file from this repository.
* Open the file in Microsoft Excel and navigate to the **Dashboard** tab.
* Use the interactive Slicers to filter the charts dynamically. 
* *Note: You can open the Power Pivot window to explore the DAX measures and relational connections built behind the scenes.*
