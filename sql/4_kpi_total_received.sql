/*Purpose: Calculate the total loan amount disbursed overall, in the current month (MTD), and the previous month (PMTD).*/
/*======================================================================================================================*/

-- Total amount collected
SELECT SUM(total_payment) AS Total_Amount_Collected
FROM dbo.financial_loan;

-- MTD total received
SELECT SUM(total_payment) AS MTD_Amount_Collected
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD total received
SELECT SUM(total_payment) AS PMTD_Amount_Collected
FROM dbo.financial_loan
WHERE MONTH(issue_date) = 11;
