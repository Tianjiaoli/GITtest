SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [data].[Cluster_SqlServer_SqlProcess_Instances_DateRange]
(
    @MinDate AS BIGINT
    , @MaxDate AS BIGINT
    , @MaxSamples AS INT
)
RETURNS TABLE
AS
RETURN
WITH [SightedIds]([Id]) AS
(
    SELECT DISTINCT [Id]
    FROM [data].[Cluster_SqlServer_SqlProcess_Sightings]
    WHERE [data].[Cluster_SqlServer_SqlProcess_Sightings].[SightingDate] >= @MinDate AND [data].[Cluster_SqlServer_SqlProcess_Sightings].[SightingDate] <= @MaxDate
)
, [SightedInstances]([Id], [ParentId], [IdCollectionDate], [Cluster_Name], [Cluster_SqlServer_Name], [Cluster_SqlServer_SqlProcess_LoginTime], [Cluster_SqlServer_SqlProcess_SessionId]) AS
(
    SELECT [data].[Cluster_SqlServer_SqlProcess_Keys].[Id]
    , [data].[Cluster_SqlServer_SqlProcess_Keys].[ParentId]
    , [data].[Cluster_SqlServer_SqlProcess_Keys].[CollectionDate] AS [IdCollectionDate]
    , [data].[Cluster_Keys].[_Name] AS [Cluster_Name]
    , [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name]
    , [data].[Cluster_SqlServer_SqlProcess_Keys].[_LoginTime] AS [Cluster_SqlServer_SqlProcess_LoginTime]
    , [data].[Cluster_SqlServer_SqlProcess_Keys].[_SessionId] AS [Cluster_SqlServer_SqlProcess_SessionId]
    FROM [SightedIds]
     INNER JOIN [data].[Cluster_SqlServer_SqlProcess_Keys] ON [data].[Cluster_SqlServer_SqlProcess_Keys].[Id] = [SightedIds].[Id]
     INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_SqlProcess_Keys].[ParentId]
     INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
)
SELECT
[SightedInstances].[Id]
, [SightedInstances].[ParentId]
, [SightedInstances].[IdCollectionDate]
, [utils].[TicksToDateTime]([SightedInstances].[IdCollectionDate]) AS [IdCollectionDate_DateTime]
, [SightedInstances].[Cluster_Name]
, [SightedInstances].[Cluster_SqlServer_Name]
, [SightedInstances].[Cluster_SqlServer_SqlProcess_LoginTime]
, [utils].[TicksToDateTime]([SightedInstances].[Cluster_SqlServer_SqlProcess_LoginTime]) AS [Cluster_SqlServer_SqlProcess_LoginTime_DateTime]
, [SightedInstances].[Cluster_SqlServer_SqlProcess_SessionId]
, [Leaf].[CollectionDate]
, [utils].[TicksToDateTime]([Leaf].[CollectionDate]) AS [CollectionDate_DateTime]
, [Leaf].[_Hostname] AS [Cluster_SqlServer_SqlProcess_Hostname]
, [Leaf].[_LoginName] AS [Cluster_SqlServer_SqlProcess_LoginName]
, [Leaf].[_ProgramName] AS [Cluster_SqlServer_SqlProcess_ProgramName]
FROM
 [SightedInstances]
INNER JOIN
 [data].[Cluster_SqlServer_SqlProcess_Instances] [Leaf]
 ON [SightedInstances].[Id] = [Leaf].[Id]
GO
