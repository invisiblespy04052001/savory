CREATE PROCEDURE [dbo].[GetLogList]
(
    --@LogTypeId INT,
    @PageIndex INT,
    @PageSize INT
)
AS
BEGIN
    SELECT COUNT(1) AS TotalCount
    FROM [dbo].[LogEvent]
    --WHERE
    --    (@LogTypeId IS NULL OR LogTypeId = @LogTypeId)

    ;WITH T AS
    (
        SELECT ROW_NUMBER() OVER (ORDER BY CreateTime DESC) number,
            [Id],
            [Guid],
            [Title],
            [CreateTime]
        FROM [dbo].[LogEvent]
        --WHERE
        --    (@LogTypeId IS NULL OR LogTypeId = @LogTypeId)
    )
    SELECT
        [Id],
        [Guid],
        [Title],
        [CreateTime]
    FROM T
    WHERE number BETWEEN (@PageSize*(@PageIndex-1)+1) AND (@PageSize * @PageIndex)
END

