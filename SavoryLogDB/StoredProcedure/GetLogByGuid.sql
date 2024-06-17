CREATE PROCEDURE [dbo].[GetLogByGuid]
(
    @Guid UNIQUEIDENTIFIER
)
AS
BEGIN

    SELECT
        [Id],
        [Guid],
        [AppId],
        [LogTypeId],
        [Source],
        [CreateTime],
        [Title],
        [Content]
    FROM [dbo].[LogEvent]
    WHERE [Guid] = @Guid

END