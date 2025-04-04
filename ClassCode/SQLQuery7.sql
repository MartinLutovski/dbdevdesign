-- Find all Employees with FirstName = "Goran"

SELECT * 
FROM Employees
WHERE FirstName = 'Goran';


SELECT *
FROM Employees
WHERE LastName LIKE 'S%'

SELECT *
FROM Employees
WHERE DateOfBirth > '1988.01.01';


-- Find all Male employe

SELECT *
FROM Employees
WHERE Gender = 'M';


-- Find all Employes hired in January /1998

SELECT *
FROM Employees
WHERE HireDate >= '01.01.1998' AND HireDate < '01.02.1998';

SELECT *
FROM Employees
WHERE HireDate BETWEEN '01.01.1998' AND '01.31.1998';

-- The same query above using BETWEEN


-- Find all Employes with Lastname
-- starting with 'A' hired in January/2019

SELECT *
FROM Employees
WHERE LastName LIKE 'A%' AND HireDate BETWEEN '01.01.2019' AND '01.31.2019'



-- ORDER BY
-- Find all Employees with FirstName = 'Aleksandar'
-- ordered by LastName

SELECT *
FROM Employees
WHERE FirstName = 'Aleksandar'
ORDER BY LastName;

SELECT *
FROM Employees
ORDER BY FirstName;


SELECT *
FROM Employees
WHERE Gender = 'M'
ORDER BY HireDate DESC;


