USE book_shop

--SELECT title AS [book title], 
--	   country_id AS [id country]
--	FROM publisher

--SELECT first_name + ' ' + last_name AS [full name]
--	FROM author

--SELECT title, price * 1.5 AS [price with sale]
--	FROM book

--SELECT DISTINCT last_name, first_name
--	INTO author_names
--	FROM author

--INSERT INTO author (last_name, first_name)
--	SELECT author_lastname AS last_name,
--	       author_firstname AS first_name
--		FROM [library]

--SELECT --TOP 15 PERCENT
--	last_name, first_name
--	FROM author
--	ORDER BY id
--		OFFSET 5 ROWS
--		FETCH NEXT 6 ROWS ONLY

--SELECT *
--	FROM author
--	WHERE country_id = 1

--SELECT *
--	FROM book
	--WHERE author_id = 1 AND publisher_id = 5
	--WHERE price NOT BETWEEN 500 AND 1000 
	--price >= 500 AND price <= 1000
	--WHERE price IN (600, 650) --price = 650 OR price = 600


--SELECT *
--	FROM author
--	WHERE last_name LIKE '_�%'
	-- WHERE first_name IS NULL

SELECT * FROM book
GO

UPDATE book
	SET price = price * 1.05
	FROM
	(SELECT * FROM publisher WHERE country_id = 2) AS Usa
	WHERE publisher_id = Usa.id
GO

SELECT * FROM book
GO





/*

% - ����� ���-�� ����� ��������
_ - ���� ������
[asdf] - ����� ���� ������ �� ������
[a-z] - ��������
[^a-z] - ��� ���������

*/


/*
��������� ���������
= �����
>
<
<=
>=
<>, != �� �����
!< �� ������
!> �� ������
LIKE - ������ ��� ������
BETWEEN, NOT BETWEEN - �����, �� ���������
IN, NOT IN - �� ������, ��� ������

EXISTS - ��� ��������� �������� - �������� �� �������

AND
OR
NOT

*/
