SELECT FirstName, 
LEFT(FirstName, 4) AS LeftFunction,
RIGHT(LastName, 4) AS RightFunction,
LEN(CONCAT(FirstName, LastName)) AS FullNameLenght ,
SUBSTRING(FirstName, 1, 5) AS SubStringFromFirstName,
CONCAT(FirstName,  CAST(DateOfBirth AS datetime)) AS [Employee name with birth date]



FROM Employees


SELECT
CAST(Quantity AS VARCHAR) AS QuantityAsVARCHAR,
CAST(Price AS VARCHAR) AS PriceAsVARCHAR

FROM OrderDetails