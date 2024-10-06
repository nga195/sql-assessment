
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


-- Question 2: Write a uery for distinct transactions, users, and total sales for each month in 2024
SELECT 
        EXTRACT(YEAR FROM t.transaction_date) AS "year",
        EXTRACT(MONTH FROM t.transaction_date) AS "month",
        COUNT(DISTINCT t.id) AS distinct_transactions,
        COUNT(DISTINCT t.user_id) AS distinct_users,
        SUM(p.price * t.quantity) AS total_sales
    FROM 
        Transactions t
    JOIN 
        Products p ON t.product_id = p.id
    WHERE 
        EXTRACT(YEAR FROM t.transaction_date) = 2024
    GROUP BY 
        EXTRACT(YEAR FROM t.transaction_date),
        EXTRACT(MONTH FROM t.transaction_date)
    ORDER BY 
        "year", "month";