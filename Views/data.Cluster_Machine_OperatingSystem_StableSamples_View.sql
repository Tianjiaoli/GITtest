SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_Machine_OperatingSystem_StableSamples_View] AS SELECT[data].[Cluster_Machine_OperatingSystem_StableSamples].[Id] AS [Id], [data].[Cluster_Machine_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_Machine_OperatingSystem_StableSamples].[_Caption] AS [Cluster_Machine_OperatingSystem_Caption], [data].[Cluster_Machine_OperatingSystem_StableSamples].[_ServicePack] AS [Cluster_Machine_OperatingSystem_ServicePack], [data].[Cluster_Machine_OperatingSystem_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_Machine_OperatingSystem_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_Machine_Keys].[_Name] AS [Cluster_Machine_Name] FROM [data].[Cluster_Machine_OperatingSystem_StableSamples] INNER JOIN [data].[Cluster_Machine_Keys] ON [data].[Cluster_Machine_Keys].[Id] = [data].[Cluster_Machine_OperatingSystem_StableSamples].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_Machine_Keys].[ParentId]
;
GO
