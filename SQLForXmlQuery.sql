SELECT b.title,
		a.last_name,
		a.first_name,
		c.title as country,
		p.title as publisher,
		g.title as genre
	FROM book AS b
	JOIN author AS a ON b.author_id = a.id
	JOIN country AS c ON a.country_id = c.id
	JOIN publisher AS p ON b.publisher_id = p.id
	JOIN genre AS g ON b.genre_id = g.id
	ORDER BY a.last_name
	FOR XML RAW('Book'), TYPE, ELEMENTS, ROOT('Books')
