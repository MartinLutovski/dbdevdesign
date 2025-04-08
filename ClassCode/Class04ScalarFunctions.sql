CREATE FUNCTION fn_EmployeeFullName(@EmployeeId INT)
RETURNS NVARCHAR(100)
 AS
 BEGIN
	DECLARE @Result VARCHAR(150)
	
	SELECT @Result = FirstName + ' ' + LastName
	FROM Employees
	WHERE Id = @EmployeeId
	RETURN @Result


END

SELECT dbo.fn_EmployeeFullName(40) AS EmployeesFullName



CREATE FUNCTION fn_GetEmployeesByGenders(@Gender NCHAR)
RETURNS @EmployeesByGender TABLE (FirstName VARCHAR(50), LastName VARCHAR(50), Gender NCHAR)
AS
	BEGIN
 
		IF(@Gender = 'M')
		INSERT INTO @EmployeesByGender
		SELECT FirstName, LastName, Gender
		FROM Employees
		WHERE Gender = 'M'
	ELSE
		INSERT INTO @EmployeesByGender
		SELECT FirstName, LastName, Gender
		FROM Employees
		WHERE Gender = 'F'
	RETURN
END

SELECT * FROM fn_GetEmployeesByGenders('F')




