CREATE FUNCTION fn_FormatProductName(@ProductId INT)
RETURNS NVARCHAR(10)
AS
BEGIN
	DECLARE @Output VARCHAR(10)
	SELECT @Output = SUBSTRING(Code, 2, 3) + '-' + RIGHT(Name, 3) + '-' + CAST(Price AS NVARCHAR)
	FROM Products
	WHERE Id = @ProductId

	RETURN @Output
END

SELECT dbo.fn_FormatProductName(1) AS Result