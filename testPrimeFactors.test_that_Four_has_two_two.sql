
CREATE PROCEDURE testPrimeFactors.[test that Four has two two]
AS
BEGIN
    DECLARE @expected NVARCHAR(max); SET @expected = N'2,2,';
	DECLARE	@factors nvarchar(max);

	EXEC	[PrimeFactors].[getFactors]
			@number = 4,
			@factors = @factors OUTPUT

    EXEC tSQLt.AssertEqualsString @expected, @factors;

END;