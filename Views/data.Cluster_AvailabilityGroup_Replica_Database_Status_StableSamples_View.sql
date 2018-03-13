SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples_View] AS SELECT[data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[Id] AS [Id], [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[_DatabaseState] AS [Cluster_AvailabilityGroup_Replica_Database_Status_DatabaseState], [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[_DatabaseSynchronizationState] AS [Cluster_AvailabilityGroup_Replica_Database_Status_DatabaseSynchronizationState], [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[_IsDatabaseJoined] AS [Cluster_AvailabilityGroup_Replica_Database_Status_IsDatabaseJoined], [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[_IsFailoverReady] AS [Cluster_AvailabilityGroup_Replica_Database_Status_IsFailoverReady], [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_AvailabilityGroup_Keys].[_Name] AS [Cluster_AvailabilityGroup_Name], [data].[Cluster_AvailabilityGroup_Replica_Keys].[_Name] AS [Cluster_AvailabilityGroup_Replica_Name], [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[_Name] AS [Cluster_AvailabilityGroup_Replica_Database_Name] FROM [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples] INNER JOIN [data].[Cluster_AvailabilityGroup_Replica_Database_Keys] ON [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Database_Status_StableSamples].[Id]
 INNER JOIN [data].[Cluster_AvailabilityGroup_Replica_Keys] ON [data].[Cluster_AvailabilityGroup_Replica_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[ParentId]
 INNER JOIN [data].[Cluster_AvailabilityGroup_Keys] ON [data].[Cluster_AvailabilityGroup_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Keys].[ParentId]
;
GO
