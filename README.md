# 💳 Bank Loan Approval Analysis & Credit Risk Insights

---

## 📌 Project Overview

This project presents a comprehensive **Bank Loan Approval Analysis Dashboard** built using Power BI to evaluate loan approval trends, assess credit risk factors, and generate data-driven insights.

The objective is to help financial institutions improve decision-making by identifying patterns in approvals, understanding applicant profiles, and optimizing risk management strategies.

---

## 🎯 Objectives

- Analyze overall loan approval rates to evaluate lending performance  
- Identify high-risk applicant segments using CIBIL scores and income data  
- Understand the impact of employment status (Self-employed vs Salaried) on approvals  
- Evaluate the relationship between income levels and loan amounts  
- Examine creditworthiness through detailed CIBIL score analysis  

---

## 🛠️ Tools & Technologies Used

- Power BI (Dashboard, DAX, Data Modeling)  
- SQL (Data Querying & Analysis)  
- Python (Pandas for Data Cleaning & EDA)  
- Excel (Data preprocessing)  

---

## 📊 Key Business Metrics

| Metric | Value |
|--------|------|
| Total Applications | 4,269 |
| Approved Loans | 2,656 |
| Rejected Loans | 1,613 |
| Overall Approval Rate | 62.22% |
| Average CIBIL Score | 599.94 |
| Average Annual Income | 5.06M |

---

## 🔍 Key Insights

1. **Approval Performance**  
   The bank maintains a healthy approval rate of 62.22%, indicating a balanced risk-taking strategy.

2. **Employment Status Impact**  
   Employment type has minimal impact on approval rates, with both self-employed and salaried applicants showing nearly identical approval percentages.

3. **Credit Score Benchmark**  
   The average CIBIL score (~600) falls within the "fair" range, highlighting moderate creditworthiness among applicants.

4. **Income vs Loan Relationship**  
   A direct relationship exists between annual income and loan amount; however, higher loan-to-income ratios lead to increased rejection rates.

5. **Rejection Trends**  
   Approximately 37.78% of applications are rejected, primarily driven by credit risk factors rather than employment status.

---

## 💡 Business Recommendations

- Focus on applicants with higher CIBIL scores to reduce default risk  
- Introduce stricter evaluation for high loan-to-income ratio applications  
- Provide financial guidance to improve applicant credit profiles  
- Develop targeted loan products for moderate-risk customers  
- Enhance risk assessment models beyond employment classification  

---

## 🧮 SQL Analysis (Sample Queries)

```sql
-- Approval rate calculation
SELECT loan_status, COUNT(*) 
FROM loans
GROUP BY loan_status;

-- Approval rate by employment type
SELECT employment_status, 
       AVG(CASE WHEN loan_status = 'Approved' THEN 1 ELSE 0 END) AS approval_rate
FROM loans
GROUP BY employment_status;

-- CIBIL score analysis
SELECT AVG(cibil_score) 
FROM loans;

-- Income vs Loan correlation
SELECT annual_income, loan_amount 
FROM loans;
```

---

## 🐍 Python Analysis (EDA)

- Data cleaning using Pandas  
- Handling missing values  
- Exploratory Data Analysis (EDA)  
- Visualization using Matplotlib / Seaborn  

---

## 📌 Dashboard Features

- KPI Cards (Applications, Approvals, Rejections, Approval Rate)  
- Loan status distribution  
- Credit risk analysis  
- CIBIL score visualization  
- Income vs loan relationship  
- Employment-based approval comparison  
- Interactive filters and slicers  

---

## 📷 Dashboard Preview

![Dashboard](download.jpeg)

---

## 🎯 Conclusion

This project provides a detailed understanding of loan approval patterns and highlights key risk factors influencing lending decisions. The insights can help financial institutions optimize approval strategies, manage credit risk effectively, and improve overall lending performance.
