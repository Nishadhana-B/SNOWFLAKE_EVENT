# Snowflake Trust3 Demo Dataset

Simple dataset for importing into Snowflake for Trust3.ai natural language query demos.

**Repository**: https://github.com/Nishadhana-B/SNOWFLAKE_EVENT

---

## 🚀 Quick Import (Super Simple!)

### Step 1: Clone Repository

```bash
git clone https://github.com/Nishadhana-B/SNOWFLAKE_EVENT.git
cd SNOWFLAKE_EVENT
```

### Step 2: Load Data into Snowflake

Snowflake's "Load Data" feature will automatically create the database, schemas, and tables!

#### Load customers.csv

1. Log into [Snowflake Web UI](https://app.snowflake.com)
2. Click **"Load Data"** button (top right)
3. Click **"Browse"** and select `data/customers.csv`
4. In the modal:
   - **Database**: Create new `SALES_DEMO` (or select existing)
   - **Schema**: Create new `SALES` (or select existing)
   - **Table**: Create new `CUSTOMERS` (or select existing)
5. Click **"Next"** → Configure: CSV format, Skip Header = 1
6. Click **"Load"**

Snowflake will automatically:
- ✅ Create database `SALES_DEMO` (if new)
- ✅ Create schema `SALES` (if new)
- ✅ Create table `CUSTOMERS` with correct columns
- ✅ Load all data

#### Load opportunities.csv

1. Click **"Load Data"** button
2. Select `data/opportunities.csv`
3. **Database**: `SALES_DEMO`
4. **Schema**: `SALES`
5. **Table**: Create new `OPPORTUNITIES`
6. Configure: CSV format, Skip Header = 1
7. Click **"Load"**

#### Load escalations.csv

1. Click **"Load Data"** button
2. Select `data/escalations.csv`
3. **Database**: `SALES_DEMO`
4. **Schema**: Create new `SUPPORT` (or select existing)
5. **Table**: Create new `ESCALATIONS`
6. Configure: CSV format, Skip Header = 1
7. Click **"Load"**

---

## ✅ Done!

Your data is now in Snowflake:
- Database: `SALES_DEMO`
- Schema: `SALES` (CUSTOMERS, OPPORTUNITIES tables)
- Schema: `SUPPORT` (ESCALATIONS table)

---

## 🔗 Next: Connect to Trust3

1. Go to [app.trust3.ai](https://app.trust3.ai)
2. Create Snowflake data source
3. Database: `SALES_DEMO`
4. Create IQ Space with schemas: `SALES`, `SUPPORT`
5. Start querying with natural language!

---

## 💡 Sample Queries

- "What is the total number of customers?"
- "Show me all high-priority escalations"
- "What is escalation?"
- "Create a weekly report of customer escalations"

---

**That's it!** No SQL needed - just upload CSV files and Snowflake creates everything automatically! 🎉