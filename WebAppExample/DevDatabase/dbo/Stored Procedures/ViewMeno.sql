﻿CREATE PROCEDURE dbo.ViewMeno
(
	@NUM	INT
)
AS
	SELECT NUM, NAME, EMAIL, POSTDATE, POSTIP FROM dbo.Memos 
	WHERE NUM = @NUM;