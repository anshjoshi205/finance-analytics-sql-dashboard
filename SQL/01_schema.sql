-- =========================================
-- 📦 DATABASE SCHEMA
-- =========================================

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    signup_date DATE,
    country VARCHAR(50),
    city VARCHAR(50),
    acquisition_channel VARCHAR(50)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    payment_method VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE payouts (
    payout_id INT PRIMARY KEY,
    transaction_id INT,
    payout_amount DECIMAL(10,2),
    commission_fee DECIMAL(10,2),
    payout_status VARCHAR(20),
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);

CREATE TABLE failure_logs (
    failure_id INT PRIMARY KEY,
    transaction_id INT,
    failure_reason VARCHAR(50),
    failure_time DATETIME,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);