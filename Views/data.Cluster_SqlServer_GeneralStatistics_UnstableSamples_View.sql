SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples_View] AS SELECT[data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples].[_UserConnections] AS [Cluster_SqlServer_GeneralStatistics_UserConnections], [data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name] FROM [data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples] INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_GeneralStatistics_UnstableSamples].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current number of user connections to this SQL Server', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_GeneralStatistics_UnstableSamples_View', 'COLUMN', N'Cluster_SqlServer_GeneralStatistics_UserConnections'
GO
