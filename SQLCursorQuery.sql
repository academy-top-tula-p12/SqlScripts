-- 1 declare variables for cursor
DECLARE @id INT,
		@last_name VARCHAR(50),
		@first_name VARCHAR(50),
		@country_id INT;

-- 2 declare cursor and access with select
DECLARE author_cursor CURSOR SCROLL FOR
	SELECT * FROM author

-- 3 open cursor
OPEN author_cursor

-- 4 read data
FETCH NEXT FROM author_cursor
	INTO @id, @last_name, @first_name, @country_id;

WHILE @@FETCH_STATUS = 0
BEGIN
	IF @country_id = 1
		PRINT STR(@id) + ' ' 
			+ @last_name + ' ' 
			+ @first_name + ' '
			+ STR(@country_id)
	
	FETCH NEXT FROM author_cursor
		INTO @id, @last_name, @first_name, @country_id;
END

-- 5 close cursor
CLOSE author_cursor

PRINT ''

OPEN author_cursor
FETCH LAST FROM author_cursor
	INTO @id, @last_name, @first_name, @country_id;
WHILE @@FETCH_STATUS = 0
BEGIN
	IF @country_id = 1
		PRINT STR(@id) + ' ' 
			+ @last_name + ' ' 
			+ @first_name + ' '
			+ STR(@country_id)
	
	FETCH PRIOR FROM author_cursor
		INTO @id, @last_name, @first_name, @country_id;
END
CLOSE author_cursor

-- 6 free memory
DEALLOCATE author_cursor


