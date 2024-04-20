--SELECT a.last_name, a.first_name, c.title
--	FROM author AS a, country AS c
--	WHERE a.country_id = c.id

--SELECT b.title, a.last_name, p.title, b.price
--	FROM book AS b, author AS a, publisher AS p
--	WHERE b.author_id = a.id AND b.publisher_id = p.id

--SELECT COUNT(price) AS [count], AVG(price) AS [avg price]
--	FROM book AS b,
--	(SELECT * FROM author WHERE country_id = 1) AS a
--	WHERE b.author_id = a.id
	--(SELECT * FROM author WHERE last_name = 'Пушкин') AS a
	--WHERE b.author_id = a.id

--SELECT a.last_name, COUNT(*) AS [count]
--	FROM book AS b, author AS a
--	WHERE b.author_id = a.id
--	GROUP BY a.last_name
--		WITH ROLLUP
	--HAVING COUNT(*) = 2
	--ORDER by a.last_name

--SELECT a.last_name, c.title, COUNT(*)
--	FROM book AS b, author AS a, country AS c
--	WHERE b.author_id = a.id AND a.country_id = c.id
--	GROUP BY --c.title, a.last_name
--	--WITH ROLLUP
--	--WITH CUBE
--		GROUPING SETS(c.title, a.last_name)

--SELECT *
--	FROM book AS b,
--	(SELECT * 
--		FROM author AS au 
--		WHERE au.last_name IN ('Твен', 'Гоголь')) AS a
--	WHERE b.author_id = a.id

--SELECT b.title, a.last_name, a.first_name, g.title, p.title, b.publish_date, b.price
--	FROM book AS b, author AS a, publisher AS p, genre AS g
--	WHERE b.author_id = a.id 
--		AND b.publisher_id = p.id
--		AND b.genre_id = g.id
		--AND b.price > ANY(SELECT price FROM book WHERE b.author_id = 7)

--SELECT * FROM book

--UPDATE book
--SET price = price * 1.05
--WHERE author_id = 
--	SOME (SELECT a.id 
--		FROM author AS a, country AS c
--		WHERE a.country_id = c.id AND c.title = 'США')

--SELECT * FROM book

SELECT *
	FROM author AS a
	WHERE EXISTS(SELECT * FROM book AS b WHERE a.id = b.author_id)