# 💳 Finance Analytics Dashboard (SQL + Power BI)

A complete end-to-end data analytics project simulating a fintech system.
This project demonstrates data generation, SQL analysis, and interactive dashboarding using Power BI.

---

## 🚀 Project Overview

This project analyzes transactional data to uncover:

* Revenue trends
* Payment failure patterns
* User behavior insights
* System performance

The objective is to transform raw data into **actionable business insights**.

---

## 🧱 Tech Stack

* **SQL (MySQL)** → Data storage & querying
* **Python (Pandas, NumPy)** → Synthetic data generation
* **Power BI** → Data visualization & dashboards

---

## 📂 Project Structure

```
/sql
  ├── 01_schema.sql
  ├── 02_data_loading.sql
  ├── 03_cleaning.sql
  ├── 04_analysis.sql
  └── 05_advanced_queries.sql

/data
  ├── users.csv
  ├── transactions.csv
  ├── payouts.csv
  └── failure_logs.csv

/dashboards
  └── 1.png
  └── 2.png
  └── dashboards.pbix
/data generation
  └── data_generation.ipynb
  
```

---

## 📈 Key Insights

* 📅 Revenue peaks in **Oct–Nov**, indicating strong seasonal trends
* ⚠️ **UPI shows the highest failure rate**, highlighting reliability concerns
* 🏦 **Bank declined** is the most common failure reason
* 💰 A small percentage of users contributes a large share of revenue (**Pareto effect**)

---

## 🧠 SQL Analysis Highlights

### 🔹 Core Metrics

* Total Revenue
* Total Users
* Failure Rate

### 🔹 Business Analysis

* Revenue by Payment Method
* Failures by Reason
* Monthly Revenue Trends

### 🔹 Advanced Insights

* Top Users by Revenue
* Failure Rate by Payment Method
* Revenue Distribution by Country

---

## ⚙️ How to Run This Project

### 1. Setup Database

Run:

* `01_schema.sql`

---

### 2. Load Data

Run:

* `02_data_loading.sql`

---

### 3. Validate Data

Run:

* `03_cleaning.sql`

---

### 4. Perform Analysis

Run:

* `04_analysis.sql`
* `05_advanced_queries.sql`

---

### 5. Open Dashboard

* Open `.pbix` file in Power BI
* Click **Refresh**

---

## 📌 Key Learnings

* Designing relational database schema
* Managing foreign key constraints
* Writing business-driven SQL queries
* Building interactive dashboards
* Generating realistic datasets


---
