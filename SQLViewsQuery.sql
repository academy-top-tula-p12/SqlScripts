-- VIEWS


--CREATE VIEW BookFullInfo AS
--SELECT b.title AS [book title],
--		a.last_name + ' ' + a.first_name AS [author],
--		c.title AS [author country],
--		p.title AS [publisher],
--		g.title AS [genre]
--	FROM book AS b
--	INNER JOIN author AS a ON b.author_id = a.id
--	INNER JOIN publisher AS p ON b.publisher_id = p.id
--	INNER JOIN genre AS g ON b.genre_id = g.id
--	INNER JOIN country AS c ON a.country_id = c.id


--ALTER VIEW BookFullInfo AS
--SELECT b.title AS [book title],
--		a.last_name + ' ' + ISNULL(a.first_name, '') AS [author],
--		c.title AS [author country],
--		p.title AS [publisher],
--		g.title AS [genre]
--	FROM book AS b
--	INNER JOIN author AS a ON b.author_id = a.id
--	INNER JOIN publisher AS p ON b.publisher_id = p.id
--	INNER JOIN genre AS g ON b.genre_id = g.id
--	INNER JOIN country AS c ON a.country_id = c.id

--ALTER VIEW BookFullInfo AS
--SELECT b.title AS [book title],
--		a.last_name + ' ' + ISNULL(a.first_name, '') AS [author],
--		c.title AS [author country],
--		p.title AS [publisher],
--		g.title AS [genre]
--	FROM book AS b
--	INNER JOIN author AS a ON b.author_id = a.id
--	INNER JOIN publisher AS p ON b.publisher_id = p.id
--	INNER JOIN genre AS g ON b.genre_id = g.id
--	INNER JOIN country AS c ON a.country_id = c.id
--	ORDER BY a.last_name


-- DROP VIEW


--SELECT * FROM BookFullInfo
