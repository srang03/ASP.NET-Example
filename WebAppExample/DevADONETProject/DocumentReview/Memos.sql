CREATE TABLE dbo.Memos(
	ID int Identity(1, 1) PRIMARY KEY,
	NAME NVARCHAR(25) NOT NULL,
	EMAIL NVARCHAR(100) NULL,
	TITLE NVARCHAR(150) NOT NULL,
	POSTDATE DateTime Default(GetDate()),
	POSTIP NVARCHAR(15) NULL
)
Go

INSERT INTO dbo.Memos (
	NAME, EMAIL, TITLE, POSTDATE, POSTIP		
) VALUES (
	'ian', 'a@a.com', 'Test', GetDate(), '127.0.0.1'
)
GO

SELECT ID, NAME, EMAIL, TITLE, POSTDATE, POSTIP FROM dbo.Memos
GO

SELECT ID, NAME, EMAIL, TITLe, POSTDATE, POSTIP FROM dbo.Memos WHERE Name LIKE '%s%'

Begin Transaction
	UPDATE dbo.Memos SET
		NAME = 'srang03',
		EMAIL = 'srang03@naver.com',
		TITLE = 'Test0303'
	WHERE id = 2
--ROLLBACK Transaction
COMMIT Transaction
Go

Begin Tran
	DELETE FROM dbo.Memos 
	WHERE id = 2

COMMIT Tran
Go