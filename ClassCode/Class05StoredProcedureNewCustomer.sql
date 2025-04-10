CREATE PROCEDURE NewCustomer
(
	@Name NVARCHAR(100),
	@AccountNumber NVARCHAR(20),
	@City NVARCHAR(100),
	@RegionName NVARCHAR(100),
	@CustomerSize NVARCHAR(10),
	@PhoneNumber NVARCHAR(20),
	@IsActive BIT

)

AS
BEGIN
	INSERT INTO Customers(Name, AccountNumber, City, RegionName, CustomerSize, PhoneNumber, IsActive)
	VALUES (@Name, @AccountNumber, @City, @RegionName, @CustomerSize, @PhoneNumber, @IsActive)
	
	SELECT COUNT(*) AS [Total customer with same first letter]
	FROM Customers
	WHERE SUBSTRING(Name, 1, 1) = SUBSTRING(@Name, 1, 1)

	SELECT COUNT(*) AS [Customers in region]
	FROM Customers
	WHERE RegionName = @RegionName

END



EXEC dbo.NewCustomer
	@Name = 'Viva',
	@AccountNumber = '123456',
	@City = 'Skopje',
	@RegionName = 'Skopski',
	@CustomerSize = 'Big',
	@PhoneNumber = '071/273-260',
	@IsActive = 1


SELECT COUNT(*)
FROM Customers