SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_Machine_Process_UnstableSamples_View] AS SELECT[data].[Cluster_Machine_Process_UnstableSamples].[Id] AS [Id], [data].[Cluster_Machine_Process_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_Machine_Process_UnstableSamples].[_CumulativePrivilegedTime] AS [Cluster_Machine_Process_CumulativePrivilegedTime], [data].[Cluster_Machine_Process_UnstableSamples].[_CumulativeUserTime] AS [Cluster_Machine_Process_CumulativeUserTime], [data].[Cluster_Machine_Process_UnstableSamples].[_PrivateBytes] AS [Cluster_Machine_Process_PrivateBytes], [data].[Cluster_Machine_Process_UnstableSamples].[_VirtualBytes] AS [Cluster_Machine_Process_VirtualBytes], [data].[Cluster_Machine_Process_UnstableSamples].[_WorkingSet] AS [Cluster_Machine_Process_WorkingSet], [data].[Cluster_Machine_Process_UnstableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_Machine_Process_UnstableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_Machine_Keys].[_Name] AS [Cluster_Machine_Name], [data].[Cluster_Machine_Process_Keys].[_Id] AS [Cluster_Machine_Process_Id], [data].[Cluster_Machine_Process_Keys].[_StartDate] AS [Cluster_Machine_Process_StartDate], [utils].[TicksToDateTime]([data].[Cluster_Machine_Process_Keys].[_StartDate]) AS [Cluster_Machine_Process_StartDate_DateTime] FROM [data].[Cluster_Machine_Process_UnstableSamples] INNER JOIN [data].[Cluster_Machine_Process_Keys] ON [data].[Cluster_Machine_Process_Keys].[Id] = [data].[Cluster_Machine_Process_UnstableSamples].[Id]
 INNER JOIN [data].[Cluster_Machine_Keys] ON [data].[Cluster_Machine_Keys].[Id] = [data].[Cluster_Machine_Process_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_Machine_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of bytes reserved for exclusive use by this process', 'SCHEMA', N'data', 'VIEW', N'Cluster_Machine_Process_UnstableSamples_View', 'COLUMN', N'Cluster_Machine_Process_PrivateBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current size in bytes of the virtual address space this process is using', 'SCHEMA', N'data', 'VIEW', N'Cluster_Machine_Process_UnstableSamples_View', 'COLUMN', N'Cluster_Machine_Process_VirtualBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current size in bytes of the memory area that the process is utilizing for code, threads, and data.', 'SCHEMA', N'data', 'VIEW', N'Cluster_Machine_Process_UnstableSamples_View', 'COLUMN', N'Cluster_Machine_Process_WorkingSet'
GO
