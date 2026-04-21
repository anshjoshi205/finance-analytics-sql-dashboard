-- =========================================
-- 📥 DATA LOADING
-- =========================================

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE failure_logs;
TRUNCATE TABLE payouts;
TRUNCATE TABLE transactions;
TRUNCATE TABLE users;

SET FOREIGN_KEY_CHECKS = 1;

-- Load Users
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load Transactions
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/transactions.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load Payouts
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/payouts.csv'
INTO TABLE payouts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Load Failure Logs
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/failure_logs.csv'
INTO TABLE failure_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;