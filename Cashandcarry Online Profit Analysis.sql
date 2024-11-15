-----          CASHANDCARRY ONLINE STORES PROFIT ANALYSIS

USE MYFINALPROJECT;


----  CATEGORY II               PROFIT ANALYSIS

--- 1:	Total Profit

-- 1a) 	What profit was earned from 2011 to 2014?
SELECT SUM(New_Profit) AS TotalProfit 
FROM Cashandcarrysales
--               OR
SELECT SUM(Main_Profit) AS TotalProfit 
FROM Cashandcarrysales

-- 1b)  What was the annual profit evaluation?
SELECT Year, SUM(New_Profit) AS TotalProfit 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year
ORDER BY Totalprofit DESC;

-- 1c)	What are the peak sales periods?

-- 1ci) Which month had the highest profit for each year?
WITH MonthlyProfit AS 
(SELECT Year, Month, SUM(New_Profit) AS TotalProfit
FROM cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Month),
RankedProfit AS 
(SELECT Year, Month, TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY TotalProfit DESC) AS ProfitRank
FROM MonthlyProfit)
SELECT Year, Month, TotalProfit
FROM RankedProfit
WHERE ProfitRank = 1
ORDER BY Year;

-- 1cii)   Which month had the lowest profit for each year?
WITH MonthlyProfit AS 
(SELECT Year, Month, SUM(New_Profit) AS TotalProfit
FROM cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Month),
RankedProfit AS 
(SELECT Year, Month, TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY TotalProfit ASC) AS ProfitRank
FROM MonthlyProfit)
SELECT Year, Month, TotalProfit
FROM RankedProfit
WHERE ProfitRank = 1
ORDER BY Year;


-- 1d) What are the peak loss period trends of some products?
WITH Monthlyloss AS 
(SELECT Year, Month, SUM(New_loss) AS TotalLoss
    FROM cashandcarrysales
    WHERE Year BETWEEN 2011 AND 2014
    GROUP BY Year, Month),
RankedLoss AS 
(SELECT Year, Month, TotalLoss,
ROW_NUMBER() OVER (PARTITION BY Year ORDER BY TotalLoss DESC) AS LossRank
FROM MonthlyLoss)
SELECT Year, Month, TotalLoss
FROM RankedLoss
WHERE LossRank = 1
ORDER BY Year;


---  2) PROFIT ANALYSIS BY PRODUCT

-- 2a)What was the top and least profit-generating product for each year?

-- 2ai) What was the top profit-generating product for each year?
WITH YearlyProfit AS 
(SELECT Product_Name, Product_ID, Year, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year ORDER BY SUM(New_Profit) DESC) AS ProfitRank
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID, Year)
SELECT Year, Product_Name, Product_ID, TotalProfit
FROM YearlyProfit
WHERE ProfitRank = 1
ORDER BY Year;

-- 2aii) What was the least profit-generating product for each year?
WITH YearlyProfit AS 
(SELECT Product_Name, Product_ID, Year, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(New_Profit) ASC) AS ProfitRank
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID, Year)
SELECT Year, Product_Name, Product_ID, TotalProfit
FROM YearlyProfit
WHERE ProfitRank = 1
ORDER BY Year;


-- 2b      Which product category generated the highest 
--         and lowest profit from 2011 to 2014?

-- 2bi)    Which product category generated the highest 
--         profit from 2011 to 2014?
WITH CategoryProfit AS 
(SELECT Year, Category, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(New_Profit) DESC) AS RankedCategory 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Category )
SELECT Year, Category, TotalProfit
FROM CategoryProfit
WHERE RankedCategory = 1
ORDER BY Year;

-- 2cii)  Which product category generated the 
--        lowest profit from 2011 to 2014?
WITH CategoryProfit AS 
(SELECT Year, Category, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(New_Profit) ASC) AS RankedCategory 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Category )
SELECT Year, Category, TotalProfit
FROM CategoryProfit
WHERE RankedCategory = 1
ORDER BY Year;



--- 3) PROFIT ANALYSIS BY COUNTRY

-- 3a)     Which countries generated the highest and 
--         lowest profit from 2011 to 2014?

-- 3ai)    Which countries generated the highest 
--        profit from 2011 to 2014?
SELECT TOP 10 Country, SUM(New_Profit) AS TotalProfit
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Country
ORDER BY TotalProfit DESC;

-- 3aii)   Which countries contributed the lowest 
--         profit from 2011 to 2014?
SELECT TOP 10 Country, SUM(New_Profit) AS TotalProfit
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Country
ORDER BY TotalProfit ASC;

-- 3b)	Which countries contributed the most and least to annual profit?

-- 3bi) 	Which countries contributed the most to annual profit? 
WITH CountrySales AS 
(SELECT Year, Country, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(New_Profit) DESC) AS RankedProfit
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Country)
SELECT Year, Country, TotalProfit
FROM CountrySales
WHERE RankedProfit = 1
ORDER BY Year;

-- 3bii) 	Which countries contributed the least to annual profit? 
WITH CountrySales AS 
(SELECT Year, Country, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(Sales) ASC) AS RankedProfit
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Country)
SELECT Year, Country, TotalProfit
FROM CountrySales
WHERE RankedProfit = 1
ORDER BY Year;


--- 4) PROFIT ANALYSIS BY CUSTOMERS

-- 4a)      Who are the overall highest profit-generating
--          customer from 2011 to 2014?
SELECT TOP 10 Customer_ID, Customer_Name, SUM(New_Profit) AS TotalProfit
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalProfit DESC;

-- 4b) Who is the highest profit-generating customer for each year? 
WITH CustomerProfit AS 
(SELECT Year, Customer_ID, Customer_Name, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY Year 
                   ORDER BY SUM(New_Profit) DESC) AS RankedCustomer
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Customer_ID, Customer_Name)
SELECT Year, Customer_ID, Customer_Name,TotalProfit
FROM CustomerProfit
WHERE RankedCustomer = 1
ORDER BY Year;

-- 4c)         Who are the key customers from top 
--             profit-contributing countries?
WITH CountryProfit AS 
(SELECT Year, Country, SUM(New_Profit) AS TotalCountryProfit, -- Calculate total profit for each country in each year
ROW_NUMBER() OVER (PARTITION BY Year ORDER BY SUM(New_Profit) DESC) AS RankedCountry
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Country),
TopCountries AS 
(SELECT Year, Country, TotalCountryProfit -- Include total profit for the top country
FROM CountryProfit -- Use the correct CTE name here
WHERE RankedCountry = 1),
CustomerProfit AS 
(SELECT Year, Customer_ID, Customer_Name, Country, SUM(New_Profit) AS CustomerProfit, -- Sum profit for each customer in the top country
ROW_NUMBER() OVER (PARTITION BY Year, Country ORDER BY SUM(New_Profit) DESC) AS RankedCustomer
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Year, Customer_ID, Customer_Name, Country)
SELECT 
    tc.Year, 
    cs.Customer_ID, 
    cs.Customer_Name,
    tc.Country,
    cs.CustomerProfit AS TopCustomerProfit, -- Display the profit of the top customer
    tc.TotalCountryProfit -- Show the total profit of the top country
FROM 
    TopCountries tc
LEFT JOIN 
    CustomerProfit cs ON tc.Year = cs.Year AND tc.Country = cs.Country
WHERE 
    cs.RankedCustomer = 1 -- Only include the top customer in each country
ORDER BY 
    tc.Year;


---  5: PROFIT ANALYSIS BY CUSTOMER SEGMENT

-- 5a)  Which customers segment is driving the most profit?
WITH SegmentProfit AS 
(SELECT Year, Segment, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(New_Profit) DESC) AS RankedProfit 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Segment )
SELECT Year, Segment, TotalProfit
FROM SegmentProfit
WHERE RankedProfit = 1
ORDER BY Year;

-- 5b)    Which product category had the highest 
--        profit each year from the consumer segment?
WITH Topconsumerscategory AS 
(SELECT Year, Segment, Category, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(New_Profit) DESC) AS RankedProfitCategory 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Segment, Category )
SELECT Year, Segment, Category, TotalProfit
FROM Topconsumerscategory
WHERE RankedProfitCategory = 1
ORDER BY Year;


---- 6:   PROFIT ANALYSIS BY ORDER PRIORITY

--6a)     Which order priority level contributed the most 
--        and the least to profit between 2011 and 2014?

-- 6ai)  Which product order priority contributed the most 
--      to Profit during the period from 2011 to 2014?
WITH OrderpriorityProfit AS 
(SELECT Year, Order_Priority, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) DESC) AS RankedorderpriorityProfit 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Order_Priority )
SELECT Year, Order_Priority, TotalProfit
FROM OrderpriorityProfit
WHERE RankedorderpriorityProfit = 1
ORDER BY Year;

-- 6aii)  Which product order priority contributed the least 
--      to Profit during the period from 2011 to 2014?
WITH OrderpriorityProfit AS 
(SELECT Year, Order_Priority, SUM(New_Profit) AS TotalProfit,
ROW_NUMBER() OVER (PARTITION BY YEAR 
                   ORDER BY SUM(Sales) ASC) AS RankedorderpriorityProfit 
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 and 2014
GROUP BY Year, Order_Priority )
SELECT Year, Order_Priority, TotalProfit
FROM OrderpriorityProfit
WHERE RankedorderpriorityProfit = 1
ORDER BY Year;

