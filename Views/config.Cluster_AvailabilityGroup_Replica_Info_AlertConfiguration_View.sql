SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration_View] AS SELECT[config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[Id] AS [Id], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_AlertType] AS [Cluster_AvailabilityGroup_Replica_Info_AlertType], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_SubType] AS [Cluster_AvailabilityGroup_Replica_Info_SubType], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_Configuration] AS [Cluster_AvailabilityGroup_Replica_Info_Configuration], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_Enabled] AS [Cluster_AvailabilityGroup_Replica_Info_Enabled], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_AlertNotification] AS [Cluster_AvailabilityGroup_Replica_Info_AlertNotification], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_EmailAddress] AS [Cluster_AvailabilityGroup_Replica_Info_EmailAddress], [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[_Version] AS [Cluster_AvailabilityGroup_Replica_Info_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_AvailabilityGroup_Keys].[_Name] AS [Cluster_AvailabilityGroup_Name], [data].[Cluster_AvailabilityGroup_Replica_Keys].[_Name] AS [Cluster_AvailabilityGroup_Replica_Name] FROM [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration] INNER JOIN [data].[Cluster_AvailabilityGroup_Replica_Keys] ON [data].[Cluster_AvailabilityGroup_Replica_Keys].[Id] = [config].[Cluster_AvailabilityGroup_Replica_Info_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_AvailabilityGroup_Keys] ON [data].[Cluster_AvailabilityGroup_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Replica_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Keys].[ParentId]
;
GO