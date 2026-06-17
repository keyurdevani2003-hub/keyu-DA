

-- SECTION A : CONCEPT QUESTIONS

-- Q1.
-- Difference between SELECT * and Specific Columns

/*
SELECT *
- Returns all columns.
- Slower if table has many columns.
- Uses more memory and network bandwidth.
- Not recommended in production.

SELECT column_name
- Returns only required columns.
- Faster.
- Better readability.
- Recommended in real projects.
*/


-- Q2.
-- Which keyword renames a column?

/*
Answer:
AS keyword is used.

Example:
SELECT Sales AS Total_Sales

Alias only changes output.
Actual table structure never changes.
*/


-- Q3.
-- Why '5000' can create datatype conflict?

/*
Sales column is numeric.

Correct:
WHERE Sales > 5000

Wrong:
WHERE Sales > '5000'

Because SQL may perform implicit conversion.
It may reduce performance or generate datatype issues.
*/


-- Q4.
-- ORDER BY DESC vs ASC

/*
DESC
Highest values first.
Used for Top Profit records.

ASC
Lowest values first.
Used for Lowest Profit/Loss records.
*/


-- Q5.
-- LIMIT equivalent in SQL Server

/*
MySQL

SELECT * FROM orders
LIMIT 10;

SQL Server

SELECT TOP 10 *
FROM orders;

Different SQL engines use different syntax.
*/


-- Q6.
-- Query Execution Order

/*
1 FROM
2 WHERE
3 GROUP BY
4 HAVING
5 SELECT
6 ORDER BY
7 TOP/LIMIT




SECTION B : PRACTICAL

-- Q1 First 20 records

SELECT TOP 20 *
FROM orders;


-- Q2 Alias

SELECT
Order_ID,
Order_Date,
Sales AS Total_Sales,
Profit
FROM orders;


-- Q3 Sales > 5000

SELECT *
FROM orders
WHERE Sales > 5000;


-- Q4 Top 10 Profitable Orders

SELECT TOP 10
Order_ID,
Customer_Name,
Sales,
Profit
FROM orders
ORDER BY Profit DESC;



SECTION C : MINI PROJECT
Retail Profitability & Market Segment Analysis


-- Total Records

SELECT COUNT(*) AS Total_Records
FROM orders;


-- Total Sales

SELECT
SUM(Sales) AS Total_Sales
FROM orders;


-- Total Profit

SELECT
SUM(Profit) AS Total_Profit
FROM orders;


-- Average Discount

SELECT
AVG(Discount) AS Avg_Discount
FROM orders;


-- Region Wise Sales

SELECT
Region,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;


-- Region Wise Profit

SELECT
Region,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;



-- Category Wise Sales

SELECT
Category,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Category Wise Profit

SELECT
Category,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;


-- Sub Category Wise Profit

SELECT
Sub_Category,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;


-- Segment Wise Sales

SELECT
Segment,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- Segment Wise Profit

SELECT
Segment,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Segment
ORDER BY Total_Profit DESC;


-- High Discount Orders

SELECT
Order_ID,
Customer_Name,
Category,
Sales,
Discount,
Profit
FROM orders
WHERE Discount > 0.20
ORDER BY Discount DESC;


-- High Discount But Loss

SELECT
Order_ID,
Customer_Name,
Category,
Sub_Category,
Region,
Sales,
Discount,
Profit
FROM orders
WHERE Discount >= 0.20
AND Profit < 0
ORDER BY Profit;


-- Loss Making Transactions

SELECT *
FROM orders
WHERE Profit < 0
ORDER BY Profit;


-- Region Wise Loss

SELECT
Region,
SUM(Profit) AS Total_Loss
FROM orders
WHERE Profit < 0
GROUP BY Region
ORDER BY Total_Loss;


-- Category Wise Loss

SELECT
Category,
SUM(Profit) AS Total_Loss
FROM orders
WHERE Profit < 0
GROUP BY Category
ORDER BY Total_Loss;


-- Average Profit Margin

SELECT
Category,
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM orders
GROUP BY Category
ORDER BY Profit_Margin_Percentage;


-- Region + Category Performance

SELECT
Region,
Category,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region, Category
ORDER BY Region, Total_Profit DESC;


-- Top 10 Customers

SELECT TOP 10
Customer_Name,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;


-- Top 10 Cities

SELECT TOP 10
City,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY City
ORDER BY Total_Sales DESC;


-- Top 10 States

SELECT TOP 10
State,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC;


-- Most Profitable Products

SELECT TOP 10
Product_Name,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Product_Name
ORDER BY Total_Profit DESC;


-- Least Profitable Products

SELECT TOP 10
Product_Name,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Product_Name
ORDER BY Total_Profit ASC;


-- Summary of Loss Transactions

SELECT
COUNT(*) AS Loss_Orders,
SUM(Profit) AS Total_Loss,
AVG(Discount) AS Avg_Discount
FROM orders
WHERE Profit < 0;


-- Multi Condition Filtering

SELECT *
FROM orders
WHERE Sales > 1000
AND Discount > 0.20
AND Profit < 0;


-- High Sales but Low Profit

SELECT *
FROM orders
WHERE Sales > 5000
AND Profit < 500;


-- Best Performing Region

SELECT TOP 1
Region,
SUM(Profit) AS Profit
FROM orders
GROUP BY Region
ORDER BY Profit DESC;


-- Worst Performing Region

SELECT TOP 1
Region,
SUM(Profit) AS Profit
FROM orders
GROUP BY Region
ORDER BY Profit ASC;


-- FINAL CONCLUSION

/*
1. Identify regions having maximum loss.

2. Identify categories giving highest profit.

3. Check whether higher discounts reduce profit.

4. Find loss making transactions.

5. Recommend reducing heavy discounts
   in loss making regions/categories.

