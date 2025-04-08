DECLARE @FirstName NVARCHAR(100)

SET @FirstName = 'Aleksandar'

SELECT Id, FirstName
FROM Employees
WHERE FirstName = @FirstName

DECLARE @FemaleEmployees TABLE
(EmployeeId INT NOT NULL, DateOfBirth DATETIME)

INSERT INTO @FemaleEmployees
SELECT Id, DateOfBirth
FROM Employees
WHERE Gender = 'F'



-- TEMP TABLE
DROP TABLE IF EXISTS #MaleEmployeesTempTable
CREATE TABLE #MaleEmployeesTempTable
(LastName VARCHAR(100), HireDate DATETIME)

INSERT INTO #MaleEmployeesTempTable
SELECT LastName, HireDate
FROM Employees
WHERE Gender = 'M' AND FirstName LIKE 'A%'

SELECT * FROM #MaleEmployeesTempTable