--CREATE DATABASE products
--GO

/*
BIT - 0,1
TINYINT - byte integer 0..255
SMALLINT - 2 byte integer -32768..32767
INT - 4 byte integer
BIGINT - 8 byte integer

DECIMAL(prec, scale)
NUMERIC = DECIMAL

SMALLMONEY = DECIMAL(10,4)
MONEY = DECIMAL(19,4)

FLOAT - -1.7 e308.. 1.7e308
FLOAT(n) - n - bits for scale
REAL = FLOAT(24) -340e38 .. 340e38

DATE - 0001.01.01 .. 9999.12.31
TIME - 00:00:00.0000000 .. 23.59:59.9999999
TIME(n) - n scale for seconds
DATETIME = DATE + TIME(3)
DATETIME2 = DATE + TIME
SMALLDATETIME
DATETIMEOFFSET 

CHAR(n)
VARCHAR(n)
NCHAR(n)
NVARCHAR(n)

BINARY(n)
VARBINARY(n)
*/