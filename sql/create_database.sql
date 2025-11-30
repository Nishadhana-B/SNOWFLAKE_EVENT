-- ============================================================================
-- Snowflake DDL Script for Trust3 Demo
-- Creates database, schemas, and tables
-- ============================================================================

-- Create Database
CREATE DATABASE IF NOT EXISTS SALES_DEMO;
USE DATABASE SALES_DEMO;

-- Create Schemas
CREATE SCHEMA IF NOT EXISTS SALES;
CREATE SCHEMA IF NOT EXISTS SUPPORT;

-- ============================================================================
-- SALES Schema - Customer and Opportunity Data
-- ============================================================================

USE SCHEMA SALES_DEMO.SALES;

-- CUSTOMERS Table
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

-- OPPORTUNITIES Table
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

-- ============================================================================
-- SUPPORT Schema - Escalation Data
-- ============================================================================

USE SCHEMA SALES_DEMO.SUPPORT;

-- ESCALATIONS Table
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
-- Summary
-- ============================================================================
-- Database: SALES_DEMO
-- Schemas: SALES, SUPPORT
-- Tables: CUSTOMERS, OPPORTUNITIES, ESCALATIONS