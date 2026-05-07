
use test




SELECT * FROM SALES

-- Har order me products ka total price (window use karke)

SELECT *,
SUM(QUANTITY*PRICE)  OVER(PARTITION BY ORDER_ID) FROM SALES


-- Har order me highest price product
SELECT * FROM (
SELECT *,
DENSE_RANK()  OVER(PARTITION BY PRODUCT_NAME ORDER BY PRICE DESC) AS LT FROM SALES)  LA
WHERE LT = 1;


-- 6. Product-wise sales running total

SELECT *, 
SUM(PRICE) OVER(PARTITION BY PRODUCT_NAME ORDER BY PRICE)
FROM SALES

use company_db
SELECT * FROM EMPLOYEES
-- Har department me salary ke hisaab se rank nikalo

SELECT *, RANK()  OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) FROM EMPlOYEES


-- Lowest salary employee in each department
SELECT * FROM(
SELECT * , DENSE_RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALARY ASC) AS KL FROM EMPLOYEES)  DJH
WHERE  KL = 1;


-- Har employee ke saath uske department ka total salary show karo
SELECT *, SUM(SALARY) OVER(PARTITION BY DEPARTMENT )  FROM EMPLOYEES


-- Joining date ke hisaab se running total salary
USE COMPANY_DB

SELECT * FROM EMPLOYEES
SELECT 
    *,
    SUM(SALARY) OVER (ORDER BY JOINING_DATE) AS RUNNING_TOTAL
FROM EMPLOYEES;



SELECT 
    *,
    LAG(SALARY) OVER (ORDER BY JOINING_DATE) AS PREV_SALARY
FROM EMPLOYEES;

SELECT 
    emp_id,
    name,
    salary,
    LEAD(salary) OVER (ORDER BY joining_date) AS next_salary
FROM employees;


-- SALARY GROWTH
SELECT 
    emp_id,
    name,
    salary,
    LAG(salary) OVER (ORDER BY joining_date) AS prev_salary,
    salary - LAG(salary) OVER (ORDER BY joining_date) AS salary_growth
FROM employees;



-- Har department me salary percentile (PERCENT_RANK)
SELECT * , PERCENT_RANK()  OVER(PARTITION BY DEPARTMENT ORDER BY SALARY ) FROM EMPLOYEES



-- NTILE(3) use karke employees ko 3 groups me divide karo
SELECT 
    emp_id,
    name,
    department,
    salary,
    NTILE(3) OVER (ORDER BY salary DESC) AS salary_group
FROM employees;



-- Har city me top performer (highest salary)
SELECT * FROM (
SELECT * , PERCENT_RANK()  OVER(PARTITION BY CITY ORDER BY SALARY ASC) AS PERFORMANCE FROM EMPLOYEES) AS DFG
WHERE PERFORMANCE > 0.90;


-- Production department ka avg vs actual salary difference
SELECT 
    emp_id,
    name,
    department,
    salary,
    AVG(salary) OVER (PARTITION BY department) AS dept_avg,
    salary - AVG(salary) OVER (PARTITION BY department) AS salary_diff
FROM employees
WHERE department = 'Production';


-- Q1. Salary Category banao

-- Salary < 28000 → "Low"
-- 28000–32000 → "Medium"

-- 32000 → "High"


SELECT *,
CASE
WHEN SALARY  < 28000 THEN "LOW"
WHEN SALARY  > 28000 AND SALARY < 32000  THEN "MEDIUM"
END
FROM EMPLOYEES;


                --     
-- Q5. Count karo

-- Kitne employees salary > 30000
-- Kitne ≤ 30000

-- 👉 Output columns:

-- high_salary_count
-- low_salary_count

SELECT * FROM EMPLOYEES 

SELECT 
SUM(CASE WHEN SALARY < 3000 THEN 1
ELSE 0 END),
SUM(CASE WHEN SALARY> 3000 THEN 1
ELSE 0 END)
FROM EMPLOYEES;


-- Q6. Department wise salary distribution

-- Count of employees with salary > 30000 per department


SELECT 
SUM(CASE WHEN SALARY < 3000 THEN 1
ELSE 0 END),
SUM(CASE WHEN SALARY> 3000 THEN 1
ELSE 0 END)
FROM EMPLOYEES;


SELECT 
    DEPARTMENT,
    SUM(CASE WHEN SALARY > 30000 THEN 1 ELSE 0 END) AS high_salary_count
FROM EMPLOYEES
GROUP BY DEPARTMENT;


-- Q7. Avg salary difference

-- Har employee ka salary vs overall avg difference
-- CASE se bata:
-- Above Avg
-- Below Avg

SELECT *,
CASE WHEN DIFF > 0  THEN "ABOVE AVG"
WHEN DIFF < 0   THEN "BELOW AVG"
ELSE " EQUAL AVG"
END  AS SALARY_STATUS
FROM (
SELECT *, 
SALARY - AVG(SALARY) OVER() AS DIFF
FROM EMPLOYEES) AS VND


Q9. City + Salary Combo

Surat + salary > 30000 → "Premium Surat Employee"
Vapi + salary > 30000 → "Premium Vapi Employee"
Baaki → "Normal"


SELECT *, CASE
WHEN  CITY = "SURAT" AND SALARY > 30000 THEN "PRIMIUM SURAT EMPLOYEES"
WHEN CITY = "VAPI"  AND  SALARY > 30000 THEN "PEIMIUM VAPI EMPLOYEES"
ELSE "NORMAL" END 
FROM(
SELECT * FROM (
SELECT CITY ,SALARY
FROM EMPLOYEES 
GROUP BY CITY ,SALARY) AS BJHH
WHERE CITY IN ("SURAT","VAPI") ) AS KJBKJ




