# Which store names are what type
SELECT group_concat(custmer_name), customer_type
FROM customers
group by 2;

# Highlight products by profit pct
SELECT product_code, profit_margin_percentage
FROM transactions
group by 1,2 
order by 2 asc;

# Product in relation to the sale qty and amount in sales
SELECT product_code, sales_qty, sales_amount 
FROM transactions
group by 1, 2, 3
order by 2 desc;

# Revenue by market share for year 2020
SELECT m.markets_name, sum(t.sales_amount) as revenue
FROM transactions as t
INNER JOIN markets as m 
ON t.market_code = m.markets_code
where t.order_date LIKE "%2020%"
group by markets_name 
order by 2 asc;


