/*Purpose: Create the financial_loan table that stores all loan application records.*/
/*===================================================================================*/

CREATE DATABASE finance_loan_db;

USE finance_loan_db;

DROP TABLE IF EXISTS dbo.financial_loan;

CREATE TABLE dbo.financial_loan (
   id INT,
   address_state VARCHAR(50),
   application_type VARCHAR(50),
   emp_length VARCHAR(50),
   emp_title VARCHAR(255),
   grade VARCHAR(50),
   home_ownership VARCHAR(50),
   issue_date VARCHAR(50),
   last_credit_pull_date VARCHAR(50),
   last_payment_date VARCHAR(50),
   loan_status VARCHAR(50),
   next_payment_date VARCHAR(50),
   member_id INT,
   purpose VARCHAR(50),
   sub_grade VARCHAR(50),
   term VARCHAR(50),
   verification_status VARCHAR(50),
   annual_income INT,
   dti REAL,
   installment REAL,
   int_rate REAL,
   loan_amount INT,
   total_acc INT,
   total_payment INT
);
