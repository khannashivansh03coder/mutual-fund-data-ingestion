CREATE TABLE dim_fund (
amfi_code INTEGER PRIMARY KEY,
fund_house TEXT,
scheme_name TEXT,
category TEXT,
sub_category TEXT,
plan TEXT,
risk_category TEXT
);

CREATE TABLE dim_date (
date_key INTEGER PRIMARY KEY,
full_date DATE,
year INTEGER,
quarter INTEGER,
month INTEGER,
day INTEGER
);

CREATE TABLE fact_nav (
amfi_code INTEGER,
date DATE,
nav REAL,
FOREIGN KEY (amfi_code) REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_transactions (
investor_id TEXT,
transaction_date DATE,
amfi_code INTEGER,
transaction_type TEXT,
amount_inr REAL,
state TEXT,
kyc_status TEXT,
FOREIGN KEY (amfi_code) REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_performance (
amfi_code INTEGER,
return_1yr_pct REAL,
return_3yr_pct REAL,
return_5yr_pct REAL,
expense_ratio_pct REAL,
FOREIGN KEY (amfi_code) REFERENCES dim_fund(amfi_code)
);

CREATE TABLE fact_aum (
date DATE,
fund_house TEXT,
aum_crore REAL
);
