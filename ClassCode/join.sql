CREATE DATABASE TEST_SEDC

USE TEST_SEDC

CREATE TABLE TableA (
Id int NOT NULL
)


CREATE TABLE TableB (
Id int NOT NULL
)


INSERT INTO TableA values (1), (2)

INSERT INTO TableB values (2), (3)



-- Cross Join

SELECT *
FROM TableA
CROSS JOIN TableB


-- INNER JOIN

SELECT *
FROM TableA ta
INNER JOIN TableB tb ON ta.Id = tb.Id;


SELECT *
FROM TableA ta
LEFT JOIN TableB tb ON ta.Id = tb.Id;

SELECT *
FROM TableA ta
RIGHT JOIN TableB tb ON ta.Id = tb.Id;

-- FULL JOIN

SELECT *
FROM TableA ta
FULL JOIN TableB tb ON ta.Id = tb.Id;