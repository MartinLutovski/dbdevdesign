SELECT COUNT (*) AS [Total number of orders]
FROM Orders


SELECT SUM(TotalPrice) AS [Total orders price]
FROM Orders


SELECT be.Name, SUM(o.TotalPrice) AS [Total order price]
FROM Orders o
INNER JOIN BusinessEntities be
ON o.BusinessEntityId = be.Id
GROUP BY be.Name

SELECT o.CustomerId, be.Name, SUM(o.TotalPrice) AS [Total order price]
FROM Orders o
INNER JOIN BusinessEntities be
ON o.BusinessEntityId = be.Id
GROUP BY be.Name, o.CustomerId
HAVING o.CustomerId <20


SELECT be.Name, MAX(o.TotalPrice) AS [Maximal order amount],
AVG(DISTINCT o.TotalPrice) AS [Average order amount]
FROM Orders O
INNER JOIN BusinessEntities be
ON o.BusinessEntityId = be.Id
GROUP BY be.Name


