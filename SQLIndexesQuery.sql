--CREATE UNIQUE CLUSTERED INDEX IX_Primary
--	ON tablename (id ASC)
USE book_shop
GO

--CREATE INDEX IX_Price
--	ON book (price ASC)
--GO

--CREATE NONCLUSTERED INDEX IX_Author_Name
--	ON author
--	(
--		last_name ASC,
--		first_name ASC
--	)
--		INCLUDE (country_id)

--SELECT OBJECT_NAME(T.object_id) AS TableName,
--		T.index_id AS IndexId,
--		TI.name AS IndexName,
--		T.avg_fragmentation_in_percent AS FragmentPercent
--	FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL)
--	AS T
--	LEFT JOIN sys.indexes AS TI ON T.object_id = TI.object_id AND T.index_id = TI.index_id

/*
< 5% - ничего не надо делать
от 5% до 30% - реорганизация индекса
> 30% - перестройка индекса
*/

-- REORGANIZE
ALTER INDEX IX_Price ON book
	REORGANIZE
GO

-- REBUILD
ALTER INDEX IX_Price ON book
	REBUILD
GO
