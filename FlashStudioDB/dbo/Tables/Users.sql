CREATE TABLE [dbo].[Users] (
    [ID]           INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [Email]        NVARCHAR (50) NOT NULL,
    [Password]     NVARCHAR (50) NOT NULL,
    [Role]         INT           NOT NULL,
    [CreatedOn]    DATETIME      NULL,
    [ModifiedOn]   DATETIME      NULL,
    [LastLoggedIn] DATETIME      NULL,
    CONSTRAINT [Users_pk] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [fk_UserRole] FOREIGN KEY ([Role]) REFERENCES [dbo].[UserRole] ([ID])
);

