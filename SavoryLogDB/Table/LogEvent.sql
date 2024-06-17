CREATE TABLE [dbo].[LogEvent]
(
    [Id] INT NOT NULL IDENTITY(1,1),
    [Guid] UNIQUEIDENTIFIER NOT NULL,
    [AppId] INT NOT NULL,
    [LogTypeId] INT NOT NULL,
    [Source] NVARCHAR(100) NOT NULL,
    [CreateTime] DATETIME NOT NULL,
    [Title] NVARCHAR(200) NOT NULL,
    [Content] NVARCHAR(MAX) NULL,
    CONSTRAINT PK_InfoEvent PRIMARY KEY([Id] ASC)
)
