SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_AvailabilityGroup_AlertConfiguration_View] AS SELECT[config].[Cluster_AvailabilityGroup_AlertConfiguration].[Id] AS [Id], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_AlertType] AS [Cluster_AvailabilityGroup_AlertType], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_SubType] AS [Cluster_AvailabilityGroup_SubType], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_Configuration] AS [Cluster_AvailabilityGroup_Configuration], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_Enabled] AS [Cluster_AvailabilityGroup_Enabled], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_AlertNotification] AS [Cluster_AvailabilityGroup_AlertNotification], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_EmailAddress] AS [Cluster_AvailabilityGroup_EmailAddress], [config].[Cluster_AvailabilityGroup_AlertConfiguration].[_Version] AS [Cluster_AvailabilityGroup_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_AvailabilityGroup_Keys].[_Name] AS [Cluster_AvailabilityGroup_Name] FROM [config].[Cluster_AvailabilityGroup_AlertConfiguration] INNER JOIN [data].[Cluster_AvailabilityGroup_Keys] ON [data].[Cluster_AvailabilityGroup_Keys].[Id] = [config].[Cluster_AvailabilityGroup_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_AvailabilityGroup_Keys].[ParentId]
;
GO
