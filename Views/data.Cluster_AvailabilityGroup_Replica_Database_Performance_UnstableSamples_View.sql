SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples_View] AS SELECT[data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[Id] AS [Id], [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[_CumulativeLogBytesReceivedPerSecond] AS [Cluster_AvailabilityGroup_Replica_Database_Performance_CumulativeLogBytesReceivedPerSecond], [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[_CumulativeRedoneBytesPerSecond] AS [Cluster_AvailabilityGroup_Replica_Database_Performance_CumulativeRedoneBytesPerSecond], [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[_CumulativeTransactionDelay] AS [Cluster_AvailabilityGroup_Replica_Database_Performance_CumulativeTransactionDelay], [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[_LogSendQueue] AS [Cluster_AvailabilityGroup_Replica_Database_Performance_LogSendQueue], [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[_RecoveryQueue] AS [Cluster_AvailabilityGroup_Replica_Database_Performance_RecoveryQueue], [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_AvailabilityGroup_Keys].[_Name] AS [Cluster_AvailabilityGroup_Name], [data].[Cluster_AvailabilityGroup_Replica_Keys].[_Name] AS [Cluster_AvailabilityGroup_Replica_Name], [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[_Name] AS [Cluster_AvailabilityGroup_Replica_Database_Name] FROM [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples] INNER JOIN [data].[Cluster_AvailabilityGroup_Replica_Database_Keys] ON [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Database_Performance_UnstableSamples].[Id]
 INNER JOIN [data].[Cluster_AvailabilityGroup_Replica_Keys] ON [data].[Cluster_AvailabilityGroup_Replica_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Database_Keys].[ParentId]
 INNER JOIN [data].[Cluster_AvailabilityGroup_Keys] ON [data].[Cluster_AvailabilityGroup_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Keys].[ParentId]
;
GO
