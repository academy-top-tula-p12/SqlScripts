--CREATE FUNCTION GetBookTitle
--(
--	@BookId INT	
--)
--RETURNS VARCHAR(50)
--AS
--BEGIN
--	DECLARE @BookTitle VARCHAR(50)
--	SELECT @BookTitle = title
--		FROM book
--		WHERE id = @BookId

--	RETURN @BookTitle
--END

--CREATE FUNCTION GetCountryId ( @CountryName VARCHAR(50))
--RETURNS INT
--AS
--BEGIN
--	DECLARE @id INT = -1
--	SELECT @id = id
--		FROM country
--		WHERE title = @CountryName
--	RETURN @id
--END

--GO

--SELECT dbo.GetCountryId('Дания')

--CREATE FUNCTION GaussAmount( @n INT )
--RETURNS INT
--AS
--BEGIN
--	DECLARE @i INT = 1
--	DECLARE @amount INT = 0

--	WHILE @i <= @n
--	BEGIN
--		SET @amount += @i
--		SET @i += 1
--	END

--	RETURN @amount
--END

--SELECT dbo.GaussAmount(1000)

--CREATE FUNCTION GetBooksAuthorId( @id INT )
--RETURNS @table TABLE (
--						book_id INT,
--						book_title VARCHAR(50),
--						book_price DECIMAL(8, 2)
--					  )
--AS
--BEGIN
--	INSERT INTO @table
--		SELECT id, title, price
--		FROM book
--		WHERE author_id = @id

--	RETURN
--	--RETURN SELECT * FROM book WHERE author_id = @id
--END
--GO

SELECT * FROM dbo.GetBooksAuthorId(5)
GO