-----          CASHANDCARRY ONLINE STORES SHIPPING ANALYSIS

USE MYFINALPROJECT;


---   CATEGORY IV   SHIPPING MODE AND COST ANALYSIS

-- 1: What is the preferred shipping mode in terms of order volume, 
--    and which shipping mode generates the highest shipping cost, 
--    sales, and profit across all product categories?
SELECT 
    Category, 
    Ship_Mode,
	SUM(Shipping_Cost) AS TotalShippingCost,
    SUM(Sales) AS TotalSales,
	SUM(New_Profit) AS TotalProfit,
    COUNT(*) AS NumberOfOrders
FROM Cashandcarrysales
WHERE Year BETWEEN 2011 AND 2014
GROUP BY Category, Ship_Mode
ORDER BY Category, TotalProfit DESC;