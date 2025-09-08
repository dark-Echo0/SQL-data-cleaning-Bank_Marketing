/*
=================================================================================
DDL Script: Create Bronze Tables
=================================================================================
Script Purpose:
    This script creates tables in the 'bronce' schema, dropping existing tables
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
=================================================================================
*/

GO

IF OBJECT_ID('bronze.bank_marketing_info', 'U') IS NOT NUll
	DROP TABLE bronze.bank_marketing_info; 
GO
  
CREATE TABLE bronze.bank_marketing_info(
    client_id INT,
    age INT,
    job NVARCHAR(50),
    marital NVARCHAR(50),
    education NVARCHAR(50),
    credit_default NVARCHAR(50),
    mortgage NVARCHAR(50),
    month NVARCHAR(50),
    day INT,
    contact_duration INT,
    number_contacts INT,
    previous_campaign_contacts INT,
    previous_outcome NVARCHAR(50),
    cons_price_idx INT,
    euribor_three_months INT,
    campaign_outcome NVARCHAR(10),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO


