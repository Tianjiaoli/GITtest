SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_MemoryManager_UnstableSamples_View] AS SELECT[data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[_FreeMemoryBytes] AS [Cluster_SqlServer_MemoryManager_FreeMemoryBytes], [data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[_TargetServerMemoryBytes] AS [Cluster_SqlServer_MemoryManager_TargetServerMemoryBytes], [data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[_TotalServerMemoryBytes] AS [Cluster_SqlServer_MemoryManager_TotalServerMemoryBytes], [data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name] FROM [data].[Cluster_SqlServer_MemoryManager_UnstableSamples] INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_MemoryManager_UnstableSamples].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Estimate of memory required by this SQL Server instance', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_MemoryManager_UnstableSamples_View', 'COLUMN', N'Cluster_SqlServer_MemoryManager_TargetServerMemoryBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount of memory allocated to this SQL Server instance', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_MemoryManager_UnstableSamples_View', 'COLUMN', N'Cluster_SqlServer_MemoryManager_TotalServerMemoryBytes'
GO
