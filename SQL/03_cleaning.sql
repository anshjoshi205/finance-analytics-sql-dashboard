-- =========================================
-- 🧹 DATA VALIDATION & CLEANING
-- =========================================

-- Check row counts
SELECT COUNT(*) AS users_count FROM users;
SELECT COUNT(*) AS transactions_count FROM transactions;
SELECT COUNT(*) AS payouts_count FROM payouts;
SELECT COUNT(*) AS failures_count FROM failure_logs;

-- Check for NULL values
SELECT * FROM transactions WHERE amount IS NULL;

-- Check invalid foreign keys
SELECT f.*
FROM failure_logs f
LEFT JOIN transactions t 
ON f.transaction_id = t.transaction_id
WHERE t.transaction_id IS NULL;

-- Remove negative amounts (if any)
DELETE FROM transactions
WHERE amount < 0;