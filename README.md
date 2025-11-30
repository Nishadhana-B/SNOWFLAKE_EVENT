# Snowflake Trust3 Demo Dataset

Simple dataset for importing into Snowflake for Trust3.ai natural language query demos.

## 🚀 Quick Import (2 Steps)

**Repository**: https://github.com/Nishadhana-B/SNOWFLAKE_EVENT

### Step 1: Clone Repository

```bash
git clone https://github.com/Nishadhana-B/SNOWFLAKE_EVENT.git
cd SNOWFLAKE_EVENT
```

### Step 2: Create Database & Tables

1. Log into [Snowflake Web UI](https://app.snowflake.com)
2. Open a new worksheet
3. Copy/paste contents of `sql/create_database.sql`
4. Run the script

**This creates:**
- Database: `SALES_DEMO`
- Schemas: `SALES`, `SUPPORT`
- Tables: `CUSTOMERS`, `OPPORTUNITIES`, `ESCALATIONS`

### Step 3: Load Data Files

**Using Snowflake Web UI (Easiest):**

1. Go to **Databases** → **SALES_DEMO** → **SALES** → **CUSTOMERS**
2. Click **Load Data** button
3. Upload `data/customers.csv`
4. Configure: File Format = CSV, Skip Header = 1
5. Click **Load**
6. Repeat for:
   - `data/opportunities.csv` → `SALES.OPPORTUNITIES`
   - `data/escalations.csv` → `SUPPORT.ESCALATIONS`

**That's it!** Now connect to Trust3 and start querying.

## 📊 What Gets Created

- **Database**: `SALES_DEMO`
- **Schemas**: `SALES` (2 tables), `SUPPORT` (1 table)
- **Data**: ~2,500 rows total

## 🔗 Next: Connect to Trust3

1. Go to [app.trust3.ai](https://app.trust3.ai)
2. Create Snowflake data source
3. Database: `SALES_DEMO`
4. Create IQ Space with schemas: `SALES`, `SUPPORT`
5. Start querying with natural language!

## 💡 Sample Queries

- "What is the total number of customers?"
- "Show me all high-priority escalations"
- "What is escalation?"
- "Create a weekly report of customer escalations"

---

**Note**: You need BOTH steps:
- **Step 1 (SQL)**: Creates the table structure
- **Step 2 (CSV)**: Populates tables with data

Without Step 1, there are no tables to load into.  
Without Step 2, tables exist but are empty.