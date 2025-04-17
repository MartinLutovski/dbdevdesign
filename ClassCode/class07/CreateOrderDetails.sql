IF OBJECT_ID('sp_CreateOrderDetails', 'P') IS NOT NULL
	DROP PROCEDURE sp_CreateOrderDetails

GO

CREATE OR ALTER PROCEDURE sp_CreateOrderDetails (@OrderId INT, @ProductId INT, @Quantity INT)
AS
BEGIN
	DECLARE @SingleProductItemPrice DECIMAL(18, 2)
	DECLARE @TotalPrice DECIMAL(18, 2)

	-- get product price

	SELECT @SingleProductItemPrice = Price
				FROM Products
				WHERE Id = @ProductId


BEGIN TRY
	INSERT INTO OrderDetails (OrderId, ProductId, Price)
	VALUES (@OrderId, @ProductId, @Quantity, @SingleProductItemPrice)
END TRY

BEGIN CATCH
SELECT ERROR_NUMBER() AS [Error number],
		ERROR_SEVERITY() AS [Error severity],
		ERROR_STATE() AS [Error state],
		ERROR_MESSAGE() AS [Error message],
		ERROR_LINE() AS [Error line]

END CATCH

--Calculate the total price

SET @TotalPrice = (
	SELECT *
	FROM OrderDetails
	WHERE OrderId = @OrderId
)


UPDATE o SET TotalPrice = @TotalPrice
		FROM Orders o
		WHERE Id = @OrderId


--OUTPUT

SELECT p.Name, SUM(od.Quantity) AS [Total quantity], SUM(od.Quantity * od.Price) AS [Total price]
FROM OrderDetails od INNER JOIN Products p ON od.ProductId = p.Id
WHERE od.OrderId = @OrderId
GROUP BY p.Name

END

EXEC dbo.sp_CreateOrderDetails @OrderId = 5, @ProductId = 10, @Quantity = 4