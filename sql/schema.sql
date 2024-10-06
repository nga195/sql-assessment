
----------------------------------------------------------------------------------------- QUESTION 1 -----------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------- QUESTION 2 -----------------------------------------------------------------------------------------

-- Table: Products
CREATE TABLE Products (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    Price FLOAT
    
);

-- Table: Transactions
CREATE TABLE Transactions (
    id INTEGER NOT NULL PRIMARY KEY,
    user_id INTEGER,
    transaction_date DATE,
    product_id INTEGER,
    quantity INTEGER
);

-- Insert data into the volatile Products table
INSERT INTO Products (id, name, Price) VALUES (1, 'Laptop', 999.99);
INSERT INTO Products (id, name, Price) VALUES (2, 'Smartphone', 599.99);
INSERT INTO Products (id, name, Price) VALUES (3, 'Tablet', 399.99);
INSERT INTO Products (id, name, Price) VALUES (4, 'Headphones', 199.99);
INSERT INTO Products (id, name, Price) VALUES (5, 'Smartwatch', 299.99);

-- Insert data into the volatile Transactions table
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (1, 101, '2024-01-15', 1, 1);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (2, 102, '2024-01-20', 2, 2);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (3, 103, '2024-02-05', 3, 1);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (4, 104, '2024-02-15', 4, 3);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (5, 105, '2024-03-10', 5, 1);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (6, 106, '2024-03-25', 1, 2);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (7, 107, '2024-04-05', 2, 1);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (8, 108, '2024-04-15', 3, 2);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (9, 109, '2024-05-10', 4, 1);
INSERT INTO Transactions (id, user_id, transaction_date, product_id, quantity) VALUES (10, 110, '2024-05-20', 5, 3);
