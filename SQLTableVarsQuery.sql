DECLARE @table TABLE
(
	book_id INT,
	book_title VARCHAR(50),
	book_price DECIMAL(8, 2)
)

INSERT INTO @table
	SELECT id, title, price 
		FROM book 
		WHERE author_id = 3


SELECT * FROM @table



RETURN
GOTO label
