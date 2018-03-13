SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_Machine_Network_AlertConfiguration_View] AS SELECT[config].[Cluster_Machine_Network_AlertConfiguration].[Id] AS [Id], [config].[Cluster_Machine_Network_AlertConfiguration].[_AlertType] AS [Cluster_Machine_Network_AlertType], [config].[Cluster_Machine_Network_AlertConfiguration].[_SubType] AS [Cluster_Machine_Network_SubType], [config].[Cluster_Machine_Network_AlertConfiguration].[_Configuration] AS [Cluster_Machine_Network_Configuration], [config].[Cluster_Machine_Network_AlertConfiguration].[_Enabled] AS [Cluster_Machine_Network_Enabled], [config].[Cluster_Machine_Network_AlertConfiguration].[_AlertNotification] AS [Cluster_Machine_Network_AlertNotification], [config].[Cluster_Machine_Network_AlertConfiguration].[_EmailAddress] AS [Cluster_Machine_Network_EmailAddress], [config].[Cluster_Machine_Network_AlertConfiguration].[_Version] AS [Cluster_Machine_Network_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_Machine_Keys].[_Name] AS [Cluster_Machine_Name], [data].[Cluster_Machine_Network_Keys].[_Name] AS [Cluster_Machine_Network_Name], [data].[Cluster_Machine_Network_Keys].[_SequenceNumber] AS [Cluster_Machine_Network_SequenceNumber] FROM [config].[Cluster_Machine_Network_AlertConfiguration] INNER JOIN [data].[Cluster_Machine_Network_Keys] ON [data].[Cluster_Machine_Network_Keys].[Id] = [config].[Cluster_Machine_Network_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Machine_Keys] ON [data].[Cluster_Machine_Keys].[Id] = [data].[Cluster_Machine_Network_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_Machine_Keys].[ParentId]
;
GO
