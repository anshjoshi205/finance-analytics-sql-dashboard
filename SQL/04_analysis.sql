-- =========================================
-- 📊 CORE BUSINESS ANALYSIS
-- =========================================

-- Total Revenue
SELECT 
    SUM(amount) AS total_revenue
FROM transactions
WHERE status = 'success';

-- Total Users
SELECT 
    COUNT(*) AS total_users
FROM users;

-- Failure Rate
SELECT 
    ROUND(
        SUM(CASE WHEN status = 'failed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS failure_rate_percentage
FROM transactions;

-- Revenue by Payment Method
SELECT 
    payment_method,
    SUM(amount) AS total_revenue
FROM transactions
WHERE status = 'success'
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- Failures by Reason
SELECT 
    failure_reason,
    COUNT(*) AS total_failures
FROM failure_logs
GROUP BY failure_reason
ORDER BY total_failures DESC;

-- Monthly Revenue Trend
SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue
FROM transactions
WHERE status = 'success'
GROUP BY month
ORDER BY month;