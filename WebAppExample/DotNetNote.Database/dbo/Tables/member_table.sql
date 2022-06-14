CREATE TABLE [dbo].[member_table] (
    [Id]        INT          IDENTITY (1, 1) NOT NULL,
    [user_id]   VARCHAR (50) NOT NULL,
    [user_pw]   VARCHAR (50) NOT NULL,
    [user_name] VARCHAR (50) NULL,
    [regDate]   DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

