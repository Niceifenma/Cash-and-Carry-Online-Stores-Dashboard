-----          CASHANDCARRY ONLINE STORES DISCOUNT ANALYSIS

USE MYFINALPROJECT;


----    CATEGORY III      DISCOUNT ANALYSIS

-- 1) What is the total amount discounted between 2011 and 2014?
SELECT SUM(Discount) AS TotalDiscount
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014

-- 2a)    What is the total amount discounted 
--       between 2011 and 2014 for each category?
SELECT Category, SUM(Discount) AS TotalDiscount
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Category
ORDER BY TotalDiscount DESC;

-- 2b)	What was the annual total amount of 
--          discount for each category?
SELECT Year, Category, SUM(Discount) AS TotalDiscount
FROM Cashandcarrysales
GROUP BY Year, Category
ORDER BY TotalDiscount DESC;

-- 3)   What are the rates of discount and how consistent are they?
SELECT Category,SUM(Discount) AS TotalDiscount, AVG(Discount) 
       AS MeanDiscount,   STDEV(Discount) AS StdDevDiscount                   
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Category;

-- 4)  What is the effectiveness of discounts on sales and profit?
WITH DiscountEffectiveness AS 
(SELECT Category,
CASE WHEN Discount > 0 THEN 'Discounted'ELSE 'Non-Discounted'
END AS Discount_Status, SUM(Sales) AS TotalSales,
   SUM(New_Profit) AS TotalProfit, COUNT(*) AS NumberOfItems
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Category, 
CASE WHEN Discount > 0 THEN 'Discounted' ELSE 'Non-Discounted'END)
SELECT Category,Discount_Status,TotalSales,TotalProfit,
NumberOfItems
FROM DiscountEffectiveness
ORDER BY Category, Discount_Status;


