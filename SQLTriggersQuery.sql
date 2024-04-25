--CREATE TABLE author_log
--(
--	id INT PRIMARY KEY IDENTITY NOT NULL,
--	date_changed DATETIME NOT NULL,
--	user_account VARCHAR(50) NOT NULL, 
--	sql_command VARCHAR(50) NOT NULL,
--	id_old INT NOT NULL, 
--	id_new INT NOT NULL,
--	last_name_old VARCHAR(50) NOT NULL,
--	last_name_new VARCHAR(50) NOT NULL,
--	first_name_old VARCHAR(50) NOT NULL,
--	first_name_new VARCHAR(50) NOT NULL,
--	country_id_old INT NOT NULL, 
--	country_id_new INT NOT NULL,
--)
--GO

--CREATE /*ALTER*/ TRIGGER TRG_Author_Log ON author
--	AFTER INSERT, UPDATE, DELETE
--AS
--BEGIN
--	DECLARE @sql_command VARCHAR(50);

--	IF EXISTS(SELECT * FROM inserted) AND 
--			NOT EXISTS(SELECT * FROM deleted)
--		SET @sql_command = 'INSERT'
--	IF NOT EXISTS(SELECT * FROM inserted) AND 
--			EXISTS(SELECT * FROM deleted)
--		SET @sql_command = 'DELETE'
--	IF EXISTS(SELECT * FROM inserted) AND 
--			EXISTS(SELECT * FROM deleted)
--		SET @sql_command = 'UPDATE'

--	IF @sql_command IN ('INSERT', 'UPDATE')
--	BEGIN
--		INSERT INTO author_log
--			(date_changed, user_account, sql_command,
--			id_old, id_new, 
--			last_name_old, last_name_new,
--			first_name_old, first_name_new, 
--			country_id_old, country_id_new)
--			SELECT GETDATE(), SUSER_SNAME(), @sql_command,
--				d.id, i.id,
--				d.last_name, i.last_name,
--				d.first_name, i.first_name,
--				d.country_id, i.country_id
--				FROM inserted AS i
--				LEFT JOIN deleted AS d ON i.id = d.id
--	END

--	IF @sql_command = 'DELETE'
--	BEGIN
--		INSERT INTO author_log
--			(date_changed, user_account, sql_command,
--			id_old, id_new, 
--			last_name_old, last_name_new,
--			first_name_old, first_name_new, 
--			country_id_old, country_id_new)
--			SELECT GETDATE(), SUSER_SNAME(), @sql_command,
--				d.id, NULL,
--				d.last_name, NULL,
--				d.first_name, NULL,
--				d.country_id, NULL
--				FROM deleted AS d
--	END
--END
--GO

--DISABLE TRIGGER TRG_Author_Log ON author
--GO

--INSERT INTO author
--	(last_name, first_name, country_id)
--	VALUES
--	('Стивенсон','Роберт Льюис', 4)
--GO


--ENABLE TRIGGER TRG_Author_Log ON author
--GO

--UPDATE author
--	SET country_id = 3
--	WHERE id = 1005
--GO

--DELETE author WHERE id = 1003