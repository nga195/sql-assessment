
-- QUESTION 1 --

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

-- QUESTION 2 --

-- Create a volatile table for Products
CREATE TABLE V_Products (
    id INTEGER NOT NULL PRIMARY KEY,
    product_name VARCHAR(100),
    price FLOAT
);

-- Create a volatile table for Transactions
CREATE TABLE V_Transactions (
    id INTEGER NOT NULL PRIMARY KEY,
    datetime TIMESTAMP,
    user_id INTEGER,
    product_id INTEGER,
    quantity INTEGER
);

-- Insert data into the volatile Products table
INSERT INTO V_Products (id, product_name, price) VALUES (1, 'Laptop', 999.99);
INSERT INTO V_Products (id, product_name, price) VALUES (2, 'Smartphone', 599.99);
INSERT INTO V_Products (id, product_name, price) VALUES (3, 'Tablet', 399.99);
INSERT INTO V_Products (id, product_name, price) VALUES (4, 'Headphones', 199.99);
INSERT INTO V_Products (id, product_name, price) VALUES (5, 'Smartwatch', 299.99);

-- Insert data into the volatile Transactions table
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (1, '2024-01-15 00:00:00', 101, 1, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (2, '2024-01-20 00:00:00', 102, 2, 2);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (3, '2024-02-05 00:00:00', 103, 3, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (4, '2024-02-15 00:00:00', 104, 4, 3);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (5, '2024-03-10 00:00:00', 105, 5, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (6, '2024-03-25 00:00:00', 106, 1, 2);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (7, '2024-04-05 00:00:00', 107, 2, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (8, '2024-04-15 00:00:00', 108, 3, 2);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (9, '2024-05-10 00:00:00', 109, 4, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (10, '2024-05-20 00:00:00', 110, 5, 3);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (11, '2023-06-10 00:00:00', 111, 1, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (12, '2023-07-15 00:00:00', 112, 2, 2);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (13, '2022-08-20 00:00:00', 113, 3, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (14, '2022-09-25 00:00:00', 114, 4, 3);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (15, '2021-10-30 00:00:00', 115, 5, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (16, '2021-11-05 00:00:00', 116, 1, 2);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (17, '2020-12-10 00:00:00', 117, 2, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (18, '2020-01-15 00:00:00', 118, 3, 2);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (19, '2019-02-20 00:00:00', 119, 4, 1);
INSERT INTO V_Transactions (id, datetime, user_id, product_id, quantity) VALUES (20, '2019-03-25 00:00:00', 120, 5, 3);

