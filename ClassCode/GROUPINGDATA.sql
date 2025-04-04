

SELECT c.City, c.RegionName, COUNT(*) AS [Number of customers]
FROM Customers c
GROUP BY c.City, c.RegionName


SELECT FirstName, LastName
FROM Employees