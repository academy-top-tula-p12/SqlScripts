--CREATE TABLE TestXml
--(
--	id INT IDENTITY NOT NULL,
--	title VARCHAR(50) NOT NULL,
--	xml_data XML NULL
--	CONSTRAINT PK_TestXml PRIMARY KEY(id)
--)
--GO

--INSERT INTO TestXml
--	(title, xml_data)
--	VALUES('Text', '<Book>
--						<Title>Война и мир</Title>
--						<Author>Толстой Лев</Author>
--					</Book>')
--GO

--UPDATE TestXml
--SET xml_data = '<Books>
--					<Book>
--							<Title>Война и мир</Title>
--							<Author>Толстой Лев</Author>
--							<Price>700</Price>
--					</Book>
--					<Book>
--							<Title>Руслан и Людмила</Title>
--							<Author>Пушкин Александр</Author>
--							<Price>400</Price>
--					</Book>
--				</Books>'
--GO

SELECT * FROM TestXml
GO
--SELECT xml_data.value('if (/Book[1]/Price > 500) then string(Book[1]/Price[1]) else "0"', 'VARCHAR(50)') AS [Tag Author]
--	FROM TestXml

----SELECT xml_data.query('/Book[1]') FROM testXml
--SELECT xml_data.value('/Book[1]', 'VARCHAR(100)') FROM testXml

--SELECT xml_data.query('/Books/Book/Price < 500') FROM TestXml
--SELECT *
-- FROM TestXml
-- WHERE xml_data.exist('/Books/Book/Price < 500') = 1

--UPDATE TestXml
--	SET xml_data.modify('insert <Book></Book> as last into (/Books[1])')
--GO

--UPDATE TestXml
--	SET xml_data.modify('delete (/Books/Book[3])')

DECLARE @xml_var XML;
--SET @xml_var = (SELECT xml_data FROM TestXml)

--SELECT @xml_var

SET @xml_var = '<Books>
					<Book title = "Война и мир" 
						  author = "Толстой Лев"
						  price = "700">
					</Book>
					<Book title = "Руслан и Людмила" 
						  author = "Пушкин Александр"
						  price = "400">
					</Book>
				</Books>'

SELECT t.col.value('@title', 'VARCHAR(100)') AS title,
		t.col.value('@author', 'VARCHAR(100)') AS author,
		t.col.value('@price', 'INT') AS price
	FROM @xml_var.nodes('/Books/Book') t(col);
