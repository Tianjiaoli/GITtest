SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_Machine_TimeZone_StableSamples_View] AS SELECT[data].[Cluster_Machine_TimeZone_StableSamples].[Id] AS [Id], [data].[Cluster_Machine_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_Machine_TimeZone_StableSamples].[_TimeZoneInfo] AS [Cluster_Machine_TimeZone_TimeZoneInfo], [data].[Cluster_Machine_TimeZone_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_Machine_TimeZone_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_Machine_Keys].[_Name] AS [Cluster_Machine_Name] FROM [data].[Cluster_Machine_TimeZone_StableSamples] INNER JOIN [data].[Cluster_Machine_Keys] ON [data].[Cluster_Machine_Keys].[Id] = [data].[Cluster_Machine_TimeZone_StableSamples].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_Machine_Keys].[ParentId]
;
GO
