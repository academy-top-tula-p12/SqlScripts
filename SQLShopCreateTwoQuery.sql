--CREATE DATABASE shop
--GO

--CREATE TABLE category
--(
--	id INT IDENTITY(1,1) PRIMARY KEY,
--	title VARCHAR(100) NOT NULL,
--	descript VARCHAR(1000)
--)


--CREATE TABLE brand
--(
--	id INT IDENTITY,
--	title VARCHAR(100) NOT NULL,
--	PRIMARY KEY(id)
--)
--GO

--CREATE TABLE product
--(
--	id INT,
--	title VARCHAR(100) NOT NULL,
--	price DECIMAL(8,2),
--	isempty BIT DEFAULT(1),
--	CHECK(price >= 0)
--)
--GO

--ALTER TABLE category
--	ALTER COLUMN title VARCHAR(200) NOT NULL
--  DROP COLUMN title
--	ADD CONSTRAINT UQ_title UNIQUE (title)
--GO

--CREATE TABLE client
--(
--	id INT IDENTITY,
--	last_name VARCHAR(100) NOT NULL,
--	first_name VARCHAR(100),
--	birth_date DATE,
--	phone VARCHAR(20),
--	activity BIT
--		CONSTRAINT DF_client_activity DEFAULT 1,
--	CONSTRAINT PK_client PRIMARY KEY(id),
--	CONSTRAINT UQ_client_phone UNIQUE(phone),
--	CONSTRAINT CK_client_birthdate CHECK(YEAR(birth_date) > 1950),
--)

ALTER TABLE product
	ADD CONSTRAINT FK_product_brand
		FOREIGN KEY(brand_id) REFERENCES brand(id)
			ON DELETE CASCADE
	--DROP CONSTRAINT FK_product_brand
	--ALTER COLUMN category_id INT NULL
	--ADD CONSTRAINT FK_product_category 
	--	FOREIGN KEY(category_id) REFERENCES category(id)
	--	ON DELETE SET NULL
		/*
		CASCADE - удаляет все связаные строки
		NO ACTION
		SET NULL
		SET DEFAULT
		*/
	--ADD brand_id INT NOT NULL
	--	CONSTRAINT FK_product_brand FOREIGN KEY REFERENCES brand(id)

	