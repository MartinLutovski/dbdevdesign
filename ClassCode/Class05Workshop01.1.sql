CREATE OR ALTER PROCEDURE CreateOrder
(
    @OrderDate DATE,              
    @Status SMALLINT,             
    @BusinessEntityId INT,
    @CustomerId INT,
    @EmployeeId INT,
    @TotalPrice DECIMAL(18, 2)
)
AS
BEGIN
 
    INSERT INTO Orders (OrderDate, Status, BusinessEntityId, CustomerId, EmployeeId, TotalPrice)
    VALUES (@OrderDate, @Status, @BusinessEntityId, @CustomerId, @EmployeeId, @TotalPrice);

  
    SELECT COUNT(*) AS TotalOrders
    FROM Orders
    WHERE CustomerId = @CustomerId;


    SELECT SUM(TotalPrice) AS TotalAmount
    FROM Orders
    WHERE CustomerId = @CustomerId AND BusinessEntityId = @BusinessEntityId;
END;


EXEC CreateOrder 
    @OrderDate = '04-10-2025',           
    @Status = 1,                      
    @BusinessEntityId = 1,
    @CustomerId = 101,
    @EmployeeId = 33,
    @TotalPrice = 150.00;


	select * from Customers