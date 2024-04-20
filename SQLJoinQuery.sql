--SELECT b.title, a.last_name, a.first_name
--	FROM book AS b
--	INNER JOIN author AS a ON a.id = b.author_id

--SELECT b.title, a.last_name, a.first_name
--	FROM book AS b
--	LEFT OUTER JOIN author AS a ON a.id = b.author_id

--SELECT b.title, a.last_name, a.first_name
--	FROM book AS b
--	RIGHT OUTER JOIN author AS a ON a.id = b.author_id

--SELECT b.title, a.last_name, a.first_name
--	FROM book AS b
--	FULL OUTER JOIN author AS a ON a.id = b.author_id

--SELECT a.last_name, a.first_name, c.title
--	FROM author AS a, country AS c
	--CROSS JOIN country AS c

--SELECT a.last_name, a.first_name, COUNT(*)
--	FROM book AS b
--	LEFT OUTER JOIN author AS a ON a.id = b.author_id
--	GROUP BY a.last_name, a.first_name

--SELECT a.last_name, a.first_name, SUM(b.price)
--	FROM book AS b
--	LEFT OUTER JOIN author AS a ON a.id = b.author_id
--	GROUP BY a.last_name, a.first_name

SELECT title, author_id FROM book_order
--UNION ALL
--EXCEPT
INTERSECT
SELECT title, author_id FROM book