USE shop

--INSERT INTO product
--	(title, category_id, brand_id, price)
--	VALUES
--	('track suit', 2, 6, 10000)


/*
UPDATE <table_name>
SET 
*/

--UPDATE product
--	SET title = 'iphone',
--		price = 70000.0
--	WHERE id = 2

--UPDATE product
--	SET price = price * 0.9
--	WHERE price > 50000

DELETE FROM product
	WHERE id = 2