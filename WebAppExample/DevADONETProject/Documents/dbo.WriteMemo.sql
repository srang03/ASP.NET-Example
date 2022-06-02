﻿CREATE PROCEDURE dbo.WriteMemo
(
	@NAME NVARCHAR(25),
	@EMAIL NVARCHAR(100),
	@Title NVARCHAR(150),
	@POSTIP NVARCHAR(15)
	)
AS
	INSERT INTO dbo.Memos (NAME, EMAIL, TITLE, POSTIP) VALUES (@NAME, @EMAIL, @TITLE, @POSTIP)
GO

