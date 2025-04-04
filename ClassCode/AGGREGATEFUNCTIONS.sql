
-- AGGREGATE FUNCTIONS


-- *COUNT*

SELECT COUNT(*) AS TotalOrders
FROM Orders 

-- Naming important, so you can have a class in C# and match them.


SELECT COUNT(RegionName) AS CustomersRegionNames
FROM Customers

SELECT COUNT(DISTINCT RegionName) AS [Customers Unique Region Names]
FROM Customers -- Better readability and naming with []


-- *SUM*
SELECT SUM(Cost) AS [Total products cost]
FROM Products


SELECT SUM(Weight) AS [Total products weight]
FROM Products

SELECT SUM(Weight) AS [Products weight between range]
FROM Products 
WHERE Weight BETWEEN  10 AND 100



-- *AVG*
SELECT AVG (DISTINCT Price) AS [Distinct products average price]
FROM Products


-- *MIN()*

SELECT MIN(HireDate) AS [First Employeed]
FROM Employees


-- *MAX()*
SELECT MAX(HireDate) AS [Last Employeed]
FROM Employees




-- *STRING_AGG()*


SELECT STRING_AGG(FirstName, ', ') AS [Employees names]
FROM Employees




-- *GETDATE()*
SELECT GETDATE() AS CurrentDate


