-- 1 Top 5 funds by AUM
SELECT fund_house, SUM(aum_crore) AS total_aum
FROM fact_aum
GROUP BY fund_house
ORDER BY total_aum DESC
LIMIT 5;

-- 2 Average NAV per month
SELECT strftime('%Y-%m', date) AS month,
AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY month;

-- 3 Total SIP transactions
SELECT COUNT(*)
FROM fact_transactions
WHERE transaction_type='SIP';

-- 4 Transactions by state
SELECT state, COUNT(*) AS total_txns
FROM fact_transactions
GROUP BY state
ORDER BY total_txns DESC;

-- 5 Funds with expense ratio below 1%
SELECT scheme_name, expense_ratio_pct
FROM fact_performance fp
JOIN dim_fund df
ON fp.amfi_code=df.amfi_code
WHERE expense_ratio_pct < 1;

-- 6 Average return by category
SELECT category,
AVG(return_3yr_pct)
FROM fact_performance fp
JOIN dim_fund df
ON fp.amfi_code=df.amfi_code
GROUP BY category;

-- 7 Highest NAV fund
SELECT amfi_code, MAX(nav)
FROM fact_nav;

-- 8 Average transaction amount
SELECT AVG(amount_inr)
FROM fact_transactions;

-- 9 KYC status distribution
SELECT kyc_status, COUNT(*)
FROM fact_transactions
GROUP BY kyc_status;

-- 10 Fund count by risk category
SELECT risk_category, COUNT(*)
FROM dim_fund
GROUP BY risk_category;
