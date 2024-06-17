CREATE TABLE [dbo].[LogType]
(
    [Id] INT NOT NULL IDENTITY(1,1),
    [TypeName] NVARCHAR(20) NOT NULL,
    [Description] NVARCHAR(100) NULL,
    CONSTRAINT PK_LogType PRIMARY KEY([Id] ASC)
)
