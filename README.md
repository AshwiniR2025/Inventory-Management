
# 🔍 Power BI Report Data Source Transition & Validation

This project demonstrates a real-world scenario of **transitioning a Power BI report’s data source** from **Microsoft SQL Server** to **MySQL**, followed by **data validation** and **publishing** to appropriate Power BI service workspaces.

---

## 📌 Project Overview

The goal of this exercise is to ensure that Power BI reports retain their **numerical integrity** after switching the underlying data source. Although the data itself doesn’t change, the **source** does—and it’s critical to confirm that all KPIs and metrics remain consistent.

---

## ✅ Key Objectives

- Switch the Power BI report data source using the **Advanced Editor** in Power Query.
- Validate that metrics in **Power BI Desktop** match those in **Power BI Service**.
- Publish reports to the appropriate **Power BI workspace** (SQL Server or MySQL).
- Highlight real-world use cases and interview relevance of such transitions.

---

## 🛠️ Technologies Used

- Power BI Desktop
- Power BI Service
- Microsoft SQL Server
- MySQL
- Power Query (M language)

---

## 🧪 Validation Walkthrough

After switching from SQL Server to MySQL:

- **Page 1**
  - Average Demand Per Day → `48.65`
  - Other KPIs: `24.70`, `61K` → ✅ Matched
- **Page 2**
  - Total Profit → `301K`
  - Total Loss → `8M`
  - Average Daily Loss → `2.97K` → ✅ Matched

This confirms that the data integrity remains intact across environments.

---

## 📤 Publishing Steps

1. Open Power BI Desktop with the updated MySQL source.
2. Click **Publish** > Choose the appropriate **Workspace** for MySQL.
3. Wait for publishing to complete.
4. Open Power BI Service > Navigate to **MySQL Workspace**.
5. Validate the report contents.

---

## 💡 Real-World Application

In practice, clients often switch databases (e.g., from MySQL to Postgres) for reasons like **cost**, **scalability**, or **performance**. These transitions typically involve:

- Rewriting SQL queries for syntax compatibility.
- Testing Power BI visuals for consistency.
- Validating business KPIs after migration.

---

## 🎯 Key Takeaways

- Always validate numbers after changing data sources—even if data remains the same.
- Use Power Query’s Advanced Editor for flexible data source management.
- Be comfortable publishing to different workspaces and verifying your reports.
- This is a common **interview scenario**—especially in BI roles where data integration is frequent.

---

