-- Declare and use of SCALAR VARIABLE in SQL

DECLARE @FirstName NVARCHAR(100)
DECLARE @LastName NVARCHAR(100)
DECLARE @FullName NVARCHAR(100)

SET @FirstName = 'Martin'
SET @LastName = 'Lutovski'


-- SELECT @FirstName


SELECT @FirstName + ' ' + @LastName AS [Full name with no CONCAT]

SELECT CONCAT(@FirstName, @LastName) AS [Full name USING CONCAT]

SET @FullName = CONCAT(@FirstName, @LastName)

SELECT @FullName AS [Full name variable result]


-- Use VARIABLES in a SELECT query

SELECT *
FROM Employees
WHERE FirstName = @FirstName AND LastName = @LastName