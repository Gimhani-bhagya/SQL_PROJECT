-- SQL Retaile salse Analysis - P1
-- DATA CLEANING

DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
(
transactions_id	INT PRIMARY KEY,
sale_date	DATE,
sale_time	TIME,
customer_id	INT,
gender	VARCHAR(20),
age	INT,
category VARCHAR(20),	
quantiy	INT,
price_per_unit	FLOAT,
cogs FLOAT,
total_sale FLOAT

);
SELECT *
FROM retail_sales;

SELECT COUNT(*)
FROM retail_sales;

SELECT *
FROM retail_sales
WHERE category IS NULL;

SELECT *
FROM retail_sales
WHERE 
transactions_id IS NULL
OR
sale_date IS NULL
OR 
sale_time IS NULL
OR 
customer_id IS NULL
OR 
gender IS NULL
OR 
age IS NULL
OR 
category IS NULL
OR 
quantiy IS NULL
OR 
price_per_unit IS NULL
OR 
cogs IS NULL
OR 
total_sale IS NULL
;


DELETE
FROM retail_sales
WHERE 
transactions_id IS NULL
OR
sale_date IS NULL
OR 
sale_time IS NULL
OR 
customer_id IS NULL
OR 
gender IS NULL
OR 
age IS NULL
OR 
category IS NULL
OR 
quantiy IS NULL
OR 
price_per_unit IS NULL
OR 
cogs IS NULL
OR 
total_sale IS NULL
;

-- DATA EXPLORATION

-- how many sales we have
SELECT COUNT(*) AS total_sale
FROM retail_sales ;

-- how many customer we have
SELECT COUNT( DISTINCT customer_id ) AS total_customers 
FROM retail_sales;

-- how many catogary we have
SELECT COUNT(DISTINCT category) AS  uniq_cat 
FROM retail_sales;

-- DATA analysis and business key probleam and answers

-- all column for sales made on 2022-11-05

SELECT *
FROM retail_sales
WHERE sale_date ='2022-11-05';

-- all column for sales catogary -of clothing and quatity more than 10 and 2022-nov
 
 SELECT *
 FROM retail_sales
 WHERE category ='Clothing' 
 AND 
	TO_CHAR(sale_date ,'YYYY-MM') ='2022-11'
AND 
	quantiy >=4

 

