USE MYFINALPROJECT;

--     OVERVIEW OF THE DATA/UNDERSTANDING THE DATA:

 SELECT * FROM Cashandcarrysales;

---1a) Determining the Duration Covered by the Sales Data
SELECT DISTINCT Year
FROM Cashandcarrysales
ORDER BY YEAR DESC;

---1b) Identifying Product Categories in the Store
SELECT DISTINCT Category
FROM Cashandcarrysales;

-- 1c) Products Offered by the Organization
SELECT DISTINCT Product_Name
FROM Cashandcarrysales;

-- 1d) Total Count of Products Provided by the Organization
SELECT COUNT(DISTINCT Product_Name) AS Numberofproductsinstore 
FROM Cashandcarrysales;

-- 1e) Top 10 Most Frequently Purchased Products or Orders
SELECT TOP 10 Product_Name, Product_ID, SUM(Quantity) AS TotalQuantity
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Product_Name, Product_ID
ORDER BY TotalQuantity DESC;

-- 1f) Identifying the Markets Linked to Purchases from the 
--     CashandCarry Organization
SELECT DISTINCT
CASE 
WHEN Market <> Market2 AND Market2 IS NOT NULL 
THEN Market + ' ' + Market2
ELSE Market
END AS CombinedMarket
FROM Cashandcarrysales
GROUP BY Market, Market2
ORDER BY CombinedMarket;

-- 1g) Identifying the Countries that Purchase from the 
--      CashandCarry Organization 
SELECT DISTINCT Country
FROM Cashandcarrysales;

-- 1h)     Identifying the number of countries that 
--           partronise Cashandcarry
SELECT COUNT (DISTINCT Country)
FROM Cashandcarrysales;

-- 1i)  Number of customers that buy from Cashandcarry Stores
SELECT COUNT (DISTINCT Customer_Name)
FROM Cashandcarrysales;

-- 1j) Names of CashandCarry customers
SELECT DISTINCT Customer_ID, Customer_Name
FROM Cashandcarrysales;

-- 1k)   Types of customer segments or buyer categories 
--       for the CashandCarry business
SELECT DISTINCT Segment
FROM Cashandcarrysales;

--1l)  Levels of order priority used in fulfilling customers' orders
SELECT DISTINCT Order_Priority
FROM Cashandcarrysales;

-- 1m)  Top 10 Most loyal Customers of CashandCarry Stores
SELECT TOP 10 
    Customer_Name, 
    Customer_ID, 
    SUM(Quantity) AS TotalQuantity, 
    COUNT(DISTINCT Order_ID) AS TotalOrders
FROM Cashandcarrysales
GROUP BY Customer_Name, Customer_ID
ORDER BY TotalOrders DESC;

-- 1n) The shipping modes available for delivering products to customers?
SELECT DISTINCT Ship_Mode
FROM Cashandcarrysales;



-----                  SUMMARY
--   This CashandCarry Online Stores data spans sales from 2011 to 2014, 
--   covering 3,788 products across Office Supplies, Furniture, and 
--   Technology categories. Purchases were made from 147 countries 
--   within business region markets such as Africa, APAC, Canada, EMEA, 
--   EU, LATAM, and the USA. Discounts were occasionally offered on 
--   select products to support clients during tough financial times. 
--   Based on purchasing needs, customers are grouped into three 
--   segments —Corporate, Home Office, and Consumer. Order priorities 
--   (Critical, High, Medium, Low) indicate urgency levels of fulfilling 
--   each order, while products are shipped via First Class, 
--   Standard Class, Second Class, and Same Day at varying costs.


