CREATE PROCEDURE [dbo].[ListMemos]

AS
	SELECT ID, NAME, EMAIL, POSTDATE, POSTIP FROM dbo.Memos ORDER BY ID DESC;
GO
