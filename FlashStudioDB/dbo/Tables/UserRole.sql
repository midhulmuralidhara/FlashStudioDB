CREATE TABLE [dbo].[UserRole] (
    [ID]           INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [AccessRoutes] NVARCHAR (50) NULL,
    CONSTRAINT [UserRole_pk] PRIMARY KEY CLUSTERED ([ID] ASC)
);

