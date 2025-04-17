-- ERROR_NUMBER()


BEGIN TRY
--Generate a divide by zero error.
	SELECT 1/0;
	--SELECT GETDATE()
END TRY
BEGIN CATCH

	PRINT 'Error Occured'
	SELECT ERROR_NUMBER() AS [Error Number]

END CATCH

--ERROR_SEVERITY()
BEGIN TRY
--Generate a divide by zero error.
	SELECT 1/0;
	--SELECT GETDATE()
END TRY
BEGIN CATCH

	PRINT 'Error Occured'
	SELECT ERROR_SEVERITY() AS [Error Number]

END CATCH


--ERROR_STATE()
BEGIN TRY
--Generate a divide by zero error.
	SELECT 1/0;
	--SELECT GETDATE()
END TRY
BEGIN CATCH

	PRINT 'Error Occured'
	SELECT ERROR_STATE() AS [Error Number]

END CATCH



--Check if procedure exist then delete it
IF OBJECT_ID('sp_ExampleProc', 'P') IS NOT NULL
	DROP PROCEDURE sp_ExampleProc

GO

--Create the procedure

CREATE PROCEDURE sp_ExampleProc
AS
BEGIN
	SELECT 1/0;
END

-- ERROR_PROCEDURE()


