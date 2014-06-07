
CREATE PROCEDURE testPrimeFactors.[test that One has no factors]
AS
BEGIN
    DECLARE @expected NVARCHAR(max); SET @expected = N'';
	DECLARE	@factors nvarchar(max);

	EXEC	[PrimeFactors].[getFactors]
			@number = 1,
			@factors = @factors OUTPUT

    EXEC tSQLt.AssertEqualsString @expected, @factors;

END;