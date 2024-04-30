USE book_shop
GO

--ALTER VIEW AmountOrders
--AS
--SELECT bo.count, 
--		c.last_name, 
--		c.first_name,
--		bo.count * b.price * bo.sale AS [amount]
--	FROM book_order AS bo
--	INNER JOIN client AS c ON bo.client_id = c.id
--	INNER JOIN book AS b ON bo.book_id = b.id
--GO

SELECT * FROM AmountOrders

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO

BEGIN TRY

BEGIN TRANSACTION
	UPDATE book_order SET sale = 1.05
		WHERE book_order.count * 
				sale *
				(SELECT price FROM book AS b WHERE b.id = book_id)
				< 500000

	UPDATE book_order SET sale = 1.1
		WHERE book_order.count * 
				sale *
				(SELECT price FROM book AS b WHERE b.id = book_id)
				>= 500000
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	SELECT ERROR_NUMBER() AS [Number of error],
			ERROR_MESSAGE() AS [Message of error]
	RETURN
END CATCH

COMMIT TRANSACTION

SELECT * FROM AmountOrders