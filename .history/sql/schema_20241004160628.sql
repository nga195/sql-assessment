-- Table: Customer
CREATE TABLE cust_tbl (
    customer_id INT PRIMARY KEY,
    customer_age INT
);

-- Table: Account
CREATE TABLE acct_tbl (
    account_id INT PRIMARY KEY,
    account_open_date DATE
);

-- Table: Reference
CREATE TABLE xref_tbl (
    account_id INT,
    customer_id INT,
    FOREIGN KEY (account_id) REFERENCES acct_tbl(account_id),
    FOREIGN KEY (customer_id) REFERENCES cust_tbl(customer_id)
);