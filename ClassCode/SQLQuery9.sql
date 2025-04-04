-- Add default constraint on table Products

ALTER TABLE Products
ADD CONSTRAINT DF_Price

DEFAULT 1 FOR [Price];


INSERT INTO Products (Code, Name, Description, Weight, Cost)
VALUES ('MIL', 'Milka Oreo', 'Delicious and sweet milka chocolate', 200, 40);


SELECT * FROM Products ORDER BY Id DESC;

-- CHECK Constraint

ALTER TABLE Products WITH CHECK
ADD CONSTRAINT CHK_Product_Price
CHECK (price<=Cost*2)

INSERT INTO Products (Code, Name, Description, Weight,Price, Cost)
VALUES ('MILN', 'Milka Noisette', 'Delicious and sweet milka chocolate', 200, 100, 40);



-- UNIQUE Constraint

ALTER TABLE Products WITH CHECK
ADD CONSTRAINT UQ_Product_Code
UNIQUE (Code);


UPDATE Products
SET Code = 'MIL'
WHERE Id = 45;

ALTER TABLE Products
ADD Quantity int


-- Foreign Key - Constraints

ALTER TABLE [Orders] WITH CHECK
ADD CONSTRAINT FK_Order_BusinessEntities
FOREIGN KEY (BusinessEntityId)
REFERENCES BusinessEntities (Id)


