-----          CASHANDCARRY ONLINE STORES SALES ANALYSIS

USE MYFINALPROJECT;




---- CATEGORY I)               SALES ANALYSIS

--- 1:                 Total Sales

-- 1a) What were the overall revenue from 2011 to 2014?
SELECT SUM(Sales) AS TotalSales
FROM Cashandcarrysales;

--  1b) What was the total revenue made each year?
SELECT Year, SUM(Sales) AS TotalSales 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year
ORDER BY TotalSales DESC;

--  1c) What are the peak sales periods?

--  1ci) Which month had the highest revenue for each year?
WITH MonthlySales AS 
(SELECT Year, Month, SUM(Sales) AS TotalSales
FROM cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Month),
RankedSales AS 
(SELECT Year, Month, TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY TotalSales DESC) AS SalesRank
FROM MonthlySales)
SELECT Year, Month, TotalSales
FROM RankedSales
WHERE SalesRank = 1
ORDER BY Year;

-- 1cii) Which month had the lowest revenue for each year?
WITH MonthlySales AS 
(SELECT Year, Month, SUM(Sales) AS TotalSales
FROM cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Month),
RankedSales AS 
(SELECT Year, Month, TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY TotalSales ASC) AS SalesRank
FROM MonthlySales)
SELECT Year, Month, TotalSales
FROM RankedSales
WHERE SalesRank = 1
ORDER BY Year;


---  2: SALES ANALYSIS BY PRODUCT

-- 2a)    Which products were the best and 
--        worst sellers between 2011 and 2014?

-- 2ai) Which products were the top sellers between 2011 and 2014?
SELECT TOP 10 Product_Name, Product_ID, SUM(Sales) AS TotalSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID
ORDER BY TotalSales DESC;

-- 2aii) Which products had the lowest sales between 2011 and 2014?
SELECT TOP 10 Product_Name, Product_ID, SUM(Sales) AS TotalSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID
ORDER BY TotalSales ASC;

-- 2b)    Which products were the best and 
--        worst sellers for each year from 2011 to 2014?

-- 2bi)   What was the top-selling product for 
--        each year from 2011 to 2014?
WITH YearlySales AS 
(SELECT Product_Name, Product_ID, Year, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) DESC) AS SalesRank
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID, Year)
SELECT Year, Product_Name, Product_ID, TotalSales
FROM YearlySales
WHERE SalesRank = 1
ORDER BY Year;

-- 2bii)   What was the lowest-selling product for 
--         each year from 2011-2014? 
WITH YearlySales AS 
(SELECT Product_Name, Product_ID, Year, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) ASC) AS SalesRank
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID, Year)
SELECT Year, Product_Name, Product_ID, TotalSales
FROM YearlySales
WHERE SalesRank = 1
ORDER BY Year;


-- 2c      Which product category had the highest 
--         and lowest sales from 2011 to 2014?

-- 2ci)    Which product category had the highest 
--         sales from 2011 to 2014?
WITH CategorySales AS 
(SELECT Year, Category, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) DESC) AS RankedCategory 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Category )
SELECT Year, Category, TotalSales
FROM CategorySales
WHERE RankedCategory = 1
ORDER BY Year;

-- 2cii)  Which product category had the 
--        lowest sales from 2011 to 2014?
WITH CategorySales AS 
(SELECT Year, Category, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR ORDER BY SUM(Sales) ASC) AS RankedCategory 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Category )
SELECT Year, Category, TotalSales
FROM CategorySales
WHERE RankedCategory = 1
ORDER BY Year;


--- 3:   SALES ANALYSIS BY COUNTRY

-- 3a)     Which countries had the highest and lowest 
--        sales contributions from 2011 to 2014?

-- 3ai) Which top 10 countries contributed the highest sales (2011-2014)?
SELECT TOP 10 Country, SUM(Sales) AS TotalSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Country
ORDER BY TotalSales DESC;

-- 3aii)   Which countries had the lowest sales 
--       contributions from 2011 to 2014?
SELECT TOP 10 Country, SUM(Sales) AS TotalSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Country
ORDER BY TotalSales ASC;

-- 3b)	What countries contributed the highest and lowest annual sales?

-- 3bi) What countries contributed the highest annual sales?  
WITH CountrySales AS 
(SELECT Year, Country, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) DESC) AS RankedSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Country)
SELECT Year, Country, TotalSales
FROM CountrySales
WHERE RankedSales = 1
ORDER BY Year;

-- 3bii) What countries contributed the Lowest annual sales? 
WITH CountrySales AS 
(SELECT Year, Country, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) ASC) AS RankedSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Country)
SELECT Year, Country, TotalSales
FROM CountrySales
WHERE RankedSales = 1
ORDER BY Year;


--- 4:    SALES ANALYSIS BY CUSTOMERS

--  4a)	Who are the top and lowest sales-contributing 
--      customers from 2011 to 2014?

-- 4ai) Who are the top sales-contributing customers from 2011 to 2014?
SELECT TOP 10 Customer_ID, Customer_Name, SUM(Sales) AS TotalSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalSales DESC;

-- 4aii) 	Which customers had the lowest 
--      sales contributions from 2011 to 2014?
SELECT TOP 10 Customer_ID, Customer_Name, SUM(Sales) AS TotalSales
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalSales ASC;


-- 4b)  Who are the top sales-generating customers by year?
WITH CustomerSales AS 
(SELECT Year, Customer_ID, Customer_Name, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) DESC) AS RankedCustomer
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Customer_ID, Customer_Name)
SELECT Year, Customer_ID, Customer_Name,TotalSales
FROM CustomerSales
WHERE RankedCustomer = 1
ORDER BY Year;

-- 4c)  Who are the key customers from the highest 
--      sales-contributing countries?
WITH CountrySales AS 
(SELECT Year, Country, SUM(Sales) AS TotalCountrySales,
             -- Calculate total sales for each country in each year
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) DESC) AS RankedCountry
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Country),
TopCountries AS 
(SELECT Year, Country, TotalCountrySales -- Include total sales for 
--                                          the top country
FROM CountrySales
WHERE RankedCountry = 1),
CustomerSales AS 
(SELECT Year, Customer_ID, Customer_Name, Country,SUM(Sales) 
AS CustomerSales, -- Sum sales for each customer in the top country
ROW_NUMBER() OVER (PARTITION BY Year, Country 
                   ORDER BY SUM(Sales) DESC) AS RankedCustomer
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Customer_ID, Customer_Name, Country)
SELECT 
    tc.Year, 
    cs.Customer_ID, 
    cs.Customer_Name,
    tc.Country,
    cs.CustomerSales AS TopCustomerSales, -- Display the
--                                          sales of the top customer
    tc.TotalCountrySales -- Show the total sales of the top country
FROM TopCountries tc
LEFT JOIN 
    CustomerSales cs ON tc.Year = cs.Year AND tc.Country = cs.Country
WHERE cs.RankedCustomer = 1 -- Only include the 
--                             top customer in each country
ORDER BY tc.Year;


---  5: SALES ANALYSIS BY CUSTOMER SEGMENT

-- 5ai)  Which customers segment is driving the most sales?
WITH SegmentSales AS 
(SELECT Year, Segment, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) DESC) AS RankedSegment 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Segment )
SELECT Year, Segment, TotalSales
FROM SegmentSales
WHERE RankedSegment = 1
ORDER BY Year;

-- 5aii)  Which customers segment is driving the least sales?
WITH SegmentSales AS 
(SELECT Year, Segment, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) ASC) AS RankedSegment 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Segment )
SELECT Year, Segment, TotalSales
FROM SegmentSales
WHERE RankedSegment = 1
ORDER BY Year;

-- 5b)    Which product category had the highest 
--        purchases each year from the consumer segment?
WITH Topconsumerscategory AS 
(SELECT Year, Segment, Category, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) DESC) AS RankedSegmentCategory 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Segment, Category )
SELECT Year, Segment, Category, TotalSales
FROM Topconsumerscategory
WHERE RankedSegmentCategory = 1
ORDER BY Year;


--- 6:   SALES ANALYSIS BY ORDER PRIORITY

-- 6a)  Which order priority level contributed the 
--      most and the least to total sales between 2011 and 2014?

-- 6ai)  Which order priority level contributed the 
--      most to total sales between 2011 and 2014?
WITH OrderprioritySales AS 
(SELECT Year, Order_Priority, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) DESC) AS Rankedorderpriority 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Order_Priority )
SELECT Year, Order_Priority, TotalSales
FROM OrderprioritySales
WHERE Rankedorderpriority = 1
ORDER BY Year;

-- 6aii)  Which order priority category generated 
--      the lowest total sales during the period from 2011 to 2014?
WITH OrderprioritySales AS 
(SELECT Year, Order_Priority, SUM(Sales) AS TotalSales,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) ASC) AS Rankedorderpriority 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Order_Priority )
SELECT Year, Order_Priority, TotalSales
FROM OrderprioritySales
WHERE Rankedorderpriority = 1
ORDER BY Year;

