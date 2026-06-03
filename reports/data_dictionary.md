# Mutual Fund Analytics - Data Dictionary

## 01_fund_master.csv

| Column             | Data Type | Description                   |
| ------------------ | --------- | ----------------------------- |
| amfi_code          | Integer   | Unique AMFI scheme identifier |
| fund_house         | Text      | Mutual fund company           |
| scheme_name        | Text      | Name of scheme                |
| category           | Text      | Fund category                 |
| sub_category       | Text      | Fund sub-category             |
| plan               | Text      | Direct/Regular plan           |
| launch_date        | Date      | Scheme launch date            |
| benchmark          | Text      | Benchmark index               |
| expense_ratio_pct  | Float     | Expense ratio percentage      |
| exit_load_pct      | Float     | Exit load percentage          |
| min_sip_amount     | Integer   | Minimum SIP amount            |
| min_lumpsum_amount | Integer   | Minimum lump sum investment   |
| fund_manager       | Text      | Fund manager name             |
| risk_category      | Text      | Risk classification           |
| sebi_category_code | Text      | SEBI category code            |

---

## 02_nav_history.csv

| Column    | Data Type | Description       |
| --------- | --------- | ----------------- |
| amfi_code | Integer   | Scheme identifier |
| date      | Date      | NAV date          |
| nav       | Float     | Net Asset Value   |

---

## 03_aum_by_fund_house.csv

| Column         | Data Type | Description             |
| -------------- | --------- | ----------------------- |
| date           | Date      | Reporting date          |
| fund_house     | Text      | Mutual fund company     |
| aum_lakh_crore | Float     | AUM in lakh crore       |
| aum_crore      | Integer   | Assets Under Management |
| num_schemes    | Integer   | Number of schemes       |

---

## 07_scheme_performance.csv

| Column            | Data Type | Description       |
| ----------------- | --------- | ----------------- |
| amfi_code         | Integer   | Scheme identifier |
| return_1yr_pct    | Float     | 1-year return     |
| return_3yr_pct    | Float     | 3-year return     |
| return_5yr_pct    | Float     | 5-year return     |
| expense_ratio_pct | Float     | Expense ratio     |
| aum_crore         | Integer   | AUM value         |
| risk_grade        | Text      | Risk category     |

---

## 08_investor_transactions.csv

| Column           | Data Type | Description             |
| ---------------- | --------- | ----------------------- |
| investor_id      | Text      | Unique investor id      |
| transaction_date | Date      | Transaction date        |
| amfi_code        | Integer   | Scheme identifier       |
| transaction_type | Text      | SIP/Lumpsum/Redemption  |
| amount_inr       | Float     | Transaction amount      |
| state            | Text      | Investor state          |
| city             | Text      | Investor city           |
| kyc_status       | Text      | KYC verification status |

Source: Bluestock Mutual Fund Analytics Dataset
