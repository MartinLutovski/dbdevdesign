CREATE OR ALTER PROCEDURE SP_GetEmployeesByGender
(
	@Gender NCHAR(1) = 'M',
	@GenderCount INT OUT
)

AS
BEGIN
	SELECT *
	FROM Employees
	WHERE Gender = @Gender

	SELECT @GenderCount = COUNT(*)
	FROM Employees
	WHERE Gender = @Gender

END


DECLARE @ReturnValue INT
DECLARE @GenderCountOut INT

EXEC @ReturnValue =
	SP_GetEmployeesByGender 'F',
	@GenderCount


SELECT @ReturnValue AS ReturnValue,
@GenderCountOut AS GenderCountOut