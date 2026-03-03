CREATE DATABASE loan_project;
USE loan_project;

CREATE TABLE loan_data (
Loan_ID VARCHAR(50),
Gender VARCHAR(10),
Married VARCHAR(10),
Dependents VARCHAR(10),
Education VARCHAR(20),
Self_Employed VARCHAR(10),
ApplicantIncome INT,
CoapplicantIncome INT,
LoanAmount INT,
Loan_Amount_Term INT,
Credit_History FLOAT,
Property_Area VARCHAR(20),
Loan_Status VARCHAR(2)
);

SELECT *,
(ApplicantIncome + CoapplicantIncome) AS Total_Income
FROM loan_data;

SELECT 
ROUND(
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END)*100.0
/ COUNT(*),2) AS Approval_Rate
FROM loan_data;

SELECT 
Property_Area,
COUNT(*) AS Total_Applications,
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END) AS Approved,
ROUND(
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END)*100.0
/ COUNT(*),2) AS Approval_Percentage
FROM loan_data
GROUP BY Property_Area;

SELECT 
Credit_History,
COUNT(*) AS Total_Applications,
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END) AS Approved,
ROUND(
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END)*100.0
/ COUNT(*),2) AS Approval_Percentage
FROM loan_data
GROUP BY Credit_History;

SELECT *,
CASE 
WHEN ApplicantIncome < 3000 THEN 'High Risk'
WHEN ApplicantIncome BETWEEN 3000 AND 7000 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS Risk_Category
FROM loan_data;

CREATE VIEW risk_segmentation AS
SELECT *,
CASE 
WHEN ApplicantIncome < 3000 THEN 'High Risk'
WHEN ApplicantIncome BETWEEN 3000 AND 7000 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS Risk_Category
FROM loan_data;

SELECT *
FROM risk_segmentation
WHERE Risk_Category = 'High Risk';

SELECT 
Education,
AVG(LoanAmount) AS Avg_Loan_Amount
FROM loan_data
GROUP BY Education;

SELECT 
Gender,
COUNT(*) AS Total,
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END) AS Approved
FROM loan_data
GROUP BY Gender;

SELECT 
Married,
COUNT(*) AS Total,
SUM(CASE WHEN Loan_Status='Y' THEN 1 ELSE 0 END) AS Approved
FROM loan_data
GROUP BY Married;

SELECT 
ApplicantIncome,
LoanAmount
FROM loan_data;
