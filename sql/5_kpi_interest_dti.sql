/*Purpose: Measure average interest rate and average debt-to-income (DTI) ratio across all loans, MTD, and PMTD.*/
/*==============================================================================================================*/

-- Average interest rate
SELECT AVG(int_rate) * 100 AS Avg_Int_Rate
FROM dbo.financial_loan;

-- MTD avg interest
SELECT AVG(int_rate) * 100 AS MTD_Avg_Int_Rate
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD avg interest
SELECT AVG(int_rate) * 100 AS PMTD_Avg_Int_Rate
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 11;

-- Average DTI
SELECT AVG(dti) * 100 AS Avg_DTI
FROM dbo.financial_loan;

-- MTD avg DTI
SELECT AVG(dti) * 100 AS MTD_Avg_DTI
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD avg DTI
SELECT AVG(dti) * 100 AS PMTD_Avg_DTI
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 11;
