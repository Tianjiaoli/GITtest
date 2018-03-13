SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples_View] AS SELECT[data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[Id] AS [Id], [data].[Cluster_AvailabilityGroup_Replica_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[_AvailabilityMode] AS [Cluster_AvailabilityGroup_Replica_Info_AvailabilityMode], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[_ConnectedState] AS [Cluster_AvailabilityGroup_Replica_Info_ConnectedState], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[_FailoverMode] AS [Cluster_AvailabilityGroup_Replica_Info_FailoverMode], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[_JoinState] AS [Cluster_AvailabilityGroup_Replica_Info_JoinState], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[_Role] AS [Cluster_AvailabilityGroup_Replica_Info_Role], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[_SynchronizationHealth] AS [Cluster_AvailabilityGroup_Replica_Info_SynchronizationHealth], [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_AvailabilityGroup_Keys].[_Name] AS [Cluster_AvailabilityGroup_Name], [data].[Cluster_AvailabilityGroup_Replica_Keys].[_Name] AS [Cluster_AvailabilityGroup_Replica_Name] FROM [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples] INNER JOIN [data].[Cluster_AvailabilityGroup_Replica_Keys] ON [data].[Cluster_AvailabilityGroup_Replica_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Info_StableSamples].[Id]
 INNER JOIN [data].[Cluster_AvailabilityGroup_Keys] ON [data].[Cluster_AvailabilityGroup_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Keys].[ParentId]
;
GO
