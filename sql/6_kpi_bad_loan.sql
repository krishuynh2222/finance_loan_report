/*Purpose: Identify bad loan metrics including charged-off percentage, funded amount, and recovery.*/
/*=================================================================================================*/

-- Bad loan percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / COUNT(id) AS Bad_Loan_Percentage
FROM dbo.financial_loan;

-- Bad loan application count
SELECT COUNT(id) AS Bad_Loan_Applications
FROM dbo.financial_loan
WHERE loan_status = 'Charged Off';

-- Bad loan funded amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
FROM dbo.financial_loan
WHERE loan_status = 'Charged Off';

-- Bad loan amount received
SELECT SUM(total_payment) AS Bad_Loan_Received
FROM dbo.financial_loan
WHERE loan_status = 'Charged Off';
