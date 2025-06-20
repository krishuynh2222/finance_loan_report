/*Purpose: Calculate the total loan amount disbursed overall, in the current month (MTD), and the previous month (PMTD).*/
/*======================================================================================================================*/

-- Total funded amount
SELECT SUM(loan_amount) AS Total_Funded_Amount
FROM dbo.financial_loan;

-- MTD funded amount
SELECT SUM(loan_amount) AS MTD_Funded_Amount
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD funded amount
SELECT SUM(loan_amount) AS PMTD_Funded_Amount
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 11;
