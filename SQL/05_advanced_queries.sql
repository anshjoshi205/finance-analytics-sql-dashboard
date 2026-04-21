-- =========================================
-- 🚀 ADVANCED ANALYSIS
-- =========================================

-- Top 10 Users by Revenue
SELECT 
    user_id,
    SUM(amount) AS total_revenue
FROM transactions
WHERE status = 'success'
GROUP BY user_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Failure Rate by Payment Method
SELECT 
    payment_method,
    ROUND(
        SUM(CASE WHEN status = 'failed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS failure_rate
FROM transactions
GROUP BY payment_method
ORDER BY failure_rate DESC;

-- Revenue Contribution by Country
SELECT 
    u.country,
    SUM(t.amount) AS total_revenue
FROM transactions t
JOIN users u ON t.user_id = u.user_id
WHERE t.status = 'success'
GROUP BY u.country
ORDER BY total_revenue DESC;

-- Average Transaction Value by Payment Method
SELECT 
    payment_method,
    AVG(amount) AS avg_transaction_value
FROM transactions
WHERE status = 'success'
GROUP BY payment_method;

-- Monthly Failure Trend
SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    COUNT(*) AS total_failures
FROM transactions
WHERE status = 'failed'
GROUP BY month
ORDER BY month;