CREATE PROC [dbo].[InsertLogEvent]
(
    @Guid UNIQUEIDENTIFIER,
    @AppId INT,
    @LogTypeId INT,
    @Source NVARCHAR(100),
    @CreateTime DATETIME,
    @Title NVARCHAR(200),
    @Content NVARCHAR(MAX)
)
AS
BEGIN

    INSERT INTO [dbo].[LogEvent]
    (
        [Guid],
        [AppId],
            [LogTypeId],
        [Source],
        [CreateTime],
        [Title],
        [Content]
    )
    VALUES
    (
        @Guid,
        @AppId,
        @LogTypeId,
        @Source,
        @CreateTime,
        @Title,
        @Content
    )

END