
CREATE PROCEDURE testPrimeFactors.[test that Two has a factor of Two]
AS
BEGIN
    DECLARE @expected NVARCHAR(max); SET @expected = N'2,';
	DECLARE	@factors nvarchar(max);

	EXEC	[PrimeFactors].[getFactors]
			@number = 2,
			@factors = @factors OUTPUT

    EXEC tSQLt.AssertEqualsString @expected, @factors;

END;