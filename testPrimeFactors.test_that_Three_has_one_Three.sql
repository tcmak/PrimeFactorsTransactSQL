
CREATE PROCEDURE testPrimeFactors.[test that Three has one Three]
AS
BEGIN
    DECLARE @expected NVARCHAR(max); SET @expected = N'3,';
	DECLARE	@factors nvarchar(max);

	EXEC	[PrimeFactors].[getFactors]
			@number = 3,
			@factors = @factors OUTPUT

    EXEC tSQLt.AssertEqualsString @expected, @factors;

END;