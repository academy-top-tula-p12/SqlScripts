USE book_shop

--SELECT title, price,
--	IIF(price < 1000, 'нормально', 'дорого')
--	--CASE
--	--	WHEN price < 500 THEN 'недорогая'
--	--	WHEN price BETWEEN 500 AND 1000 THEN 'нормальная'
--	--	WHEN price > 1000 THEN 'дорогая'
--	--END AS prop
--	FROM book

--CREATE TABLE client
--(
--	id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
--	first_name VARCHAR(50),
--	last_name VARCHAR(50) NOT NULL,
--	phone VARCHAR(20)
--)
--GO

--INSERT INTO client
--	(first_name, last_name, phone)
--	VALUES
--	('Иван', 'Иванов', '(999) 999-99-99'),
--	('Петр', 'Петров', '(909) 123-45-67'),
--	('Сидор', 'Сидоров', '(900) 900-90-90')
--GO

--SELECT *
--	FROM client

SELECT last_name,
		ISNULL(first_name, '') AS first_name
	FROM author
