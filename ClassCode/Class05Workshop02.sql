CREATE OR ALTER PROCEDURE SP_CreateOrderDetail
(
	@OrderId INT,
	@ProductId INT,
	@Quantity INT
)
AS
BEGIN
	DECLARE @Price DECIMAL(18, 2)
	DECLARE @TotalPrice DECIMAL (18, 2)

	--Get the price from Products table

	SELECT @Price = Price
		FROM Products
		WHERE Id = @ProductId
END