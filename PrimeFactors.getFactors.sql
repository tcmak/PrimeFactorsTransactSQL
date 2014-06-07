CREATE PROCEDURE PrimeFactors.getFactors
	@number int,
	@factors NVARCHAR(max) OUTPUT
AS
BEGIN
	SET @factors = N'';
	DECLARE @factor int; SET @factor = 2;

	WHILE @factor <= @number
	BEGIN
		WHILE @number % @factor = 0
		BEGIN 
			SELECT @factors += LTRIM(STR(@factor) + ',');
			SET @number = @number / @factor;
		END
		SET @factor = @factor + 1;
	END
RETURN
END