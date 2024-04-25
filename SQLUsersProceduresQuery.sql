--ALTER PROCEDURE AddBookAuthor
--(
--	@last_name VARCHAR(50),
--	@first_name VARCHAR(50),
--	@title VARCHAR(100),
--	@ganre_id INT
--)
--AS
--BEGIN
--	DECLARE @author_id INT
--	SELECT @author_id = id 
--		FROM author AS a
--		WHERE a.last_name = TRIM(@last_name)
--			AND a.first_name = TRIM(@first_name)
	
--	DECLARE @price_avg DECIMAL(8, 2)
--	SELECT @price_avg = AVG(price)
--		FROM book AS b
--		WHERE b.author_id = @author_id

--	INSERT INTO book(title, author_id, genre_id, price)
--		VALUES(TRIM(@title), @author_id, @ganre_id, @price_avg)

--	SELECT * 
--		FROM book AS b
--		WHERE b.author_id = @author_id
--END
--GO


--EXECUTE dbo.AddBookAuthor @last_name = 'Твен',
--					  @first_name = 'Марк',
--					  @title = 'Янки при дворе короля Артура',
--					  @ganre_id = 4

--EXECUTE dbo.AddBookAuthor @last_name = '   Стейнбек  ',
--					  @first_name = '    Джон     ',
--					  @title = 'Квартал Тортилья Флет',
--					  @ganre_id = 4

--EXEC sp_helpdb 'book_shop'
--EXEC sp_rename <old_name_table>, <new_name_table>
