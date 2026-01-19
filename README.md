# E-Commerce Analytics Engineering Project

## 📌 Project Overview  
This project demonstrates an **end-to-end Analytics Engineering workflow** using:

- SQL Server (data ingestion + modeling)  
- Star Schema (fact + dimensions)  
- Power BI (interactive dashboard)

The objective was to transform raw transactional data into clean analytics tables and build a business-ready dashboard for decision-making.

---

## 🧠 Business Questions Answered

The dashboard helps answer:
- Which cities generate the most revenue?  
- Which product category performs best?  
- Who are the top customers?  
- How does revenue trend day-by-day?  

---

## 🏗️ Architecture

Raw CSV files
↓
SQL Server (raw schema)
↓
Analytics Layer (Star Schema)
-fact_orders
-dim_customers
-dim_products
-dim_date
↓
Power BI Dashboard


---

## 📂 Data Sources

Four CSV files were used:

- customers.csv  
- orders.csv  
- order_items.csv  
- products.csv  

These are stored in the `/data` folder.

---

## 🗃️ Data Model (Star Schema)

### Fact Table  
`analytics.fact_orders`
- order_id  
- customer_id  
- product_id  
- order_date  
- quantity  
- revenue  

### Dimension Tables  
- `analytics.dim_customers`  
- `analytics.dim_products`  
- `analytics.dim_date`  

---

## 📊 Dashboard Features (Power BI)

The Power BI report includes:

- **Total Revenue (Card)**
- **Revenue by City (Bar Chart)**
- **Revenue by Product Category (Column Chart)**
- **Daily Revenue Trend (Line Chart)**
- **Top Customers Table**

The `.pbix` file is included in this repository.

---

## 🛠️ Tools Used

- SQL Server (SSMS)  
- Power BI Desktop  
- CSV data  
- Star Schema modeling  

---

## 🚀 How to Run This Project

1. Create database: `ecommerce_db` in SQL Server.  
2. Run scripts in `/sql` in order:
   - 01_create_raw_tables.sql  
   - 02_create_analytics_schema.sql  
   - 03_create_star_schema_tables.sql  
3. Load CSV files into `raw` schema.  
4. Open `Ecommerce_Report.pbix` in Power BI.

---

## 👨‍💻 Author  
Hemesh Baratam  
Analytics Engineering Learner | SQL | Power BI
