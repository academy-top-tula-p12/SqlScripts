USE book_shop

--SELECT title, price,
--	IIF(price < 1000, '���������', '������')
--	--CASE
--	--	WHEN price < 500 THEN '���������'
--	--	WHEN price BETWEEN 500 AND 1000 THEN '����������'
--	--	WHEN price > 1000 THEN '�������'
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
--	('����', '������', '(999) 999-99-99'),
--	('����', '������', '(909) 123-45-67'),
--	('�����', '�������', '(900) 900-90-90')
--GO

--SELECT *
--	FROM client

SELECT last_name,
		ISNULL(first_name, '') AS first_name
	FROM author
