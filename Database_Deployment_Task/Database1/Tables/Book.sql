﻿CREATE TABLE [dbo].[Book]
(
	[ISBN] NVARCHAR(30) NOT NULL PRIMARY KEY,
	[TITLE] NVARCHAR(80) NOT NULL, 
	[YEARPUBLISHED] INT NOT NULL,
	[AUTHORID] INT NOT NULL,

	FOREIGN KEY (AUTHORID) REFERENCES [DBO].[Author]
)
