
-- Question 1: Write a query that gets the earliest account_open_date, along with the account_id, for each customer_id.
SELECT
    c.customer_id,
    DATE(MIN(a.account_open_date)) AS earliest_account_open_date
FROM
    cust_tbl c
JOIN
    xref_tbl x ON c.customer_id = x.customer_id
JOIN
    acct_tbl a ON x.account_id = a.account_id
GROUP BY
    c.customer_id;


-- Question 2: Query for distinct transactions, users, and total sales
SELECT
    EXTRACT(YEAR FROM T.datetime) AS transaction_year,
    EXTRACT(MONTH FROM T.datetime) AS transaction_month,
    COUNT(DISTINCT T.id) AS distinct_transactions,
    COUNT(DISTINCT T.user_id) AS distinct_users,
    SUM(T.quantity * P.price) AS total_sales
FROM
    V_Transactions T
JOIN
    V_Products P ON T.product_id = P.id
WHERE
    EXTRACT(YEAR FROM T.datetime) = 2024
GROUP BY
    transaction_year, transaction_month
ORDER BY
    transaction_year, transaction_month;