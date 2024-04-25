--DECLARE @last_name VARCHAR(50) = 'Anonim'
--DECLARE @first_name VARCHAR(50), @age INT

--SET @last_name = 'ƒмитриев'
--SET @first_name = 'ƒмитрий'
--SET @age = 36

--SELECT @last_name, @age

--INSERT INTO client
--	(last_name, first_name)
--	VALUES


--	(@last_name, @first_name)
--GO

--SELECT * FROM client


--DECLARE @priceMax DECIMAL(8, 2),
--		@priceMin DECIMAL(8, 2),
--		@priceAvg DECIMAL(8, 2)

--SELECT @priceMin = MIN(price), 
--	   @priceMax = MAX(price),
--	   @priceAvg = AVG(price)
--	FROM book

----SELECT @priceMin, @priceMax, @priceAvg

--IF @priceAvg > 500
--	BEGIN
--		PRINT 'дорогие книги'
--	END
--ELSE
--	BEGIN
--		PRINT 'доступные книги'
--	END


--DECLARE @i INT = 1
--DECLARE @sum INT = 0

--WHILE @i <= 1000
--	BEGIN
--		SET @sum += @i
--		SET @i += 1
--	END

---- BREAK, CONTINUE

--PRINT @sum

DECLARE @i INT = 1
BEGIN TRY
	SET @i += 100
END TRY
BEGIN CATCH
	/*
	ERROR_NUMBER()
	ERROR_MESSAGE()
	ERROR_SEVERITY()
	*/
END CATCH