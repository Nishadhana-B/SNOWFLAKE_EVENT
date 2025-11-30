-- ============================================================================
-- Complete Setup Script - Creates Database, Tables, AND Loads Data
-- Run this ONE script to set everything up
-- ============================================================================

-- Step 1: Create Database and Schemas
CREATE DATABASE IF NOT EXISTS SALES_DEMO;
USE DATABASE SALES_DEMO;

CREATE SCHEMA IF NOT EXISTS SALES;
CREATE SCHEMA IF NOT EXISTS SUPPORT;

-- ============================================================================
-- Step 2: Create Tables
-- ============================================================================

USE SCHEMA SALES_DEMO.SALES;

CREATE OR REPLACE TABLE CUSTOMERS (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(200) NOT NULL,
    industry VARCHAR(100),
    company_size VARCHAR(50),
    region VARCHAR(100),
    country VARCHAR(100),
    annual_revenue DECIMAL(15,2),
    account_owner VARCHAR(100),
    created_date DATE,
    customer_tier VARCHAR(50)
);

CREATE OR REPLACE TABLE OPPORTUNITIES (
    opportunity_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    opportunity_name VARCHAR(200),
    stage VARCHAR(100),
    amount DECIMAL(12,2),
    probability DECIMAL(5,2),
    close_date DATE,
    created_date DATE,
    last_modified_date DATE,
    sales_rep VARCHAR(100),
    lead_source VARCHAR(100),
    product_interest VARCHAR(100),
    deal_type VARCHAR(50),
    forecast_category VARCHAR(50)
);

USE SCHEMA SALES_DEMO.SUPPORT;

CREATE OR REPLACE TABLE ESCALATIONS (
    escalation_id VARCHAR(50) PRIMARY KEY,
    ticket_id VARCHAR(50) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    escalation_level INTEGER,
    escalated_from VARCHAR(100),
    escalated_to VARCHAR(100),
    escalation_date TIMESTAMP,
    escalation_reason TEXT,
    resolution_date TIMESTAMP,
    escalation_resolved BOOLEAN,
    customer_impact VARCHAR(100),
    priority VARCHAR(50),
    status VARCHAR(50)
);

-- ============================================================================
-- Step 3: Load Data (if using Snowflake Web UI, upload CSV files instead)
-- ============================================================================
-- Note: To load data, you need to:
-- 1. Upload CSV files to Snowflake stage, OR
-- 2. Use Snowflake Web UI: Databases → SALES_DEMO → SALES → CUSTOMERS → Load Data
-- 3. Or use COPY commands after uploading files to a stage
--
-- Example COPY commands (after uploading files to @~/staged):
-- COPY INTO SALES_DEMO.SALES.CUSTOMERS FROM '@~/staged/customers.csv'
--   FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');
-- COPY INTO SALES_DEMO.SALES.OPPORTUNITIES FROM '@~/staged/opportunities.csv'
--   FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');
-- COPY INTO SALES_DEMO.SUPPORT.ESCALATIONS FROM '@~/staged/escalations.csv'
--   FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '"');

-- ============================================================================
-- Verification Queries
-- ============================================================================
-- Run these to verify setup:
-- SELECT COUNT(*) FROM SALES_DEMO.SALES.CUSTOMERS;
-- SELECT COUNT(*) FROM SALES_DEMO.SALES.OPPORTUNITIES;
-- SELECT COUNT(*) FROM SALES_DEMO.SUPPORT.ESCALATIONS;
