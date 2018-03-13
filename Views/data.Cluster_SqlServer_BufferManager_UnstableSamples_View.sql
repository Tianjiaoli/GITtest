SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_BufferManager_UnstableSamples_View] AS SELECT[data].[Cluster_SqlServer_BufferManager_UnstableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_BufferManager_UnstableSamples].[_BufferCacheHitRatio] AS [Cluster_SqlServer_BufferManager_BufferCacheHitRatio], [data].[Cluster_SqlServer_BufferManager_UnstableSamples].[_PageLifeExpectancy] AS [Cluster_SqlServer_BufferManager_PageLifeExpectancy], [data].[Cluster_SqlServer_BufferManager_UnstableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_BufferManager_UnstableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name] FROM [data].[Cluster_SqlServer_BufferManager_UnstableSamples] INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_BufferManager_UnstableSamples].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Percentage of data pages read from the buffer cache rather than from the physical disk', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_BufferManager_UnstableSamples_View', 'COLUMN', N'Cluster_SqlServer_BufferManager_BufferCacheHitRatio'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of seconds a page will stay in the buffer cache without being referenced', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_BufferManager_UnstableSamples_View', 'COLUMN', N'Cluster_SqlServer_BufferManager_PageLifeExpectancy'
GO
