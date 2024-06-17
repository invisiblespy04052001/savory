TRUNCATE TABLE [dbo].[LogType]

SET IDENTITY_INSERT [dbo].[LogType] ON

INSERT INTO [dbo].[LogType]([Id],[TypeName],[Description])VALUES(1,N'Debug',N'调试.')
INSERT INTO [dbo].[LogType]([Id],[TypeName],[Description])VALUES(2,N'Info',N'信息.')
INSERT INTO [dbo].[LogType]([Id],[TypeName],[Description])VALUES(3,N'Warn',N'警告.')
INSERT INTO [dbo].[LogType]([Id],[TypeName],[Description])VALUES(4,N'Error',N'错误.')
INSERT INTO [dbo].[LogType]([Id],[TypeName],[Description])VALUES(5,N'Fault',N'挂了.')

SET IDENTITY_INSERT [dbo].[LogType] OFF