CREATE PROCEDURE [dbo].[SearchMemo]
(
	@SearchField		NVARCHAR(10),
	@SearchValue		NVARCHAR(100)
)

AS
	Declare @strSql NVARCHAR(50)
	SET @strSql = 
	'
		SELECT ID, NAME, EMAIL, TITLE, POSTIP FROM dbo.Memos
		WHERE ' + @SearchField + ' LIKE %' + @SearchValue + '%
		ORDER BY ID DESC
	'
	EXECUTE (@strSql)
GO
