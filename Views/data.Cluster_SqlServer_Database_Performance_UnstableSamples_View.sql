SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_Database_Performance_UnstableSamples_View] AS SELECT[data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Database_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[_ActiveTransactions] AS [Cluster_SqlServer_Database_Performance_ActiveTransactions], [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[_CumulativeLogBytesFlushed] AS [Cluster_SqlServer_Database_Performance_CumulativeLogBytesFlushed], [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[_CumulativeLogFlushes] AS [Cluster_SqlServer_Database_Performance_CumulativeLogFlushes], [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[_CumulativeLogFlushWaits] AS [Cluster_SqlServer_Database_Performance_CumulativeLogFlushWaits], [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[_CumulativeTransactions] AS [Cluster_SqlServer_Database_Performance_CumulativeTransactions], [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Database_Keys].[_Name] AS [Cluster_SqlServer_Database_Name] FROM [data].[Cluster_SqlServer_Database_Performance_UnstableSamples] INNER JOIN [data].[Cluster_SqlServer_Database_Keys] ON [data].[Cluster_SqlServer_Database_Keys].[Id] = [data].[Cluster_SqlServer_Database_Performance_UnstableSamples].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Database_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
