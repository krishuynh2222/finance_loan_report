/*Purpose: Count total loan applications, including Month-to-Date (MTD) and Previous Month-to-Date (PMTD).*/
/*========================================================================================================*/

-- Total loan applications
SELECT COUNT(id) AS Total_Loan_Applications
FROM dbo.financial_loan;

-- MTD applications
SELECT COUNT(id) AS MTD_Loan_Applications
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD applications
SELECT COUNT(id) AS PMTD_Loan_Applications
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 11;
