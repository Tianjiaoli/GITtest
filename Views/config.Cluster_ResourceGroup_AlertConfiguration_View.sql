SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_ResourceGroup_AlertConfiguration_View] AS SELECT[config].[Cluster_ResourceGroup_AlertConfiguration].[Id] AS [Id], [config].[Cluster_ResourceGroup_AlertConfiguration].[_AlertType] AS [Cluster_ResourceGroup_AlertType], [config].[Cluster_ResourceGroup_AlertConfiguration].[_SubType] AS [Cluster_ResourceGroup_SubType], [config].[Cluster_ResourceGroup_AlertConfiguration].[_Configuration] AS [Cluster_ResourceGroup_Configuration], [config].[Cluster_ResourceGroup_AlertConfiguration].[_Enabled] AS [Cluster_ResourceGroup_Enabled], [config].[Cluster_ResourceGroup_AlertConfiguration].[_AlertNotification] AS [Cluster_ResourceGroup_AlertNotification], [config].[Cluster_ResourceGroup_AlertConfiguration].[_EmailAddress] AS [Cluster_ResourceGroup_EmailAddress], [config].[Cluster_ResourceGroup_AlertConfiguration].[_Version] AS [Cluster_ResourceGroup_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_ResourceGroup_Keys].[_Name] AS [Cluster_ResourceGroup_Name] FROM [config].[Cluster_ResourceGroup_AlertConfiguration] INNER JOIN [data].[Cluster_ResourceGroup_Keys] ON [data].[Cluster_ResourceGroup_Keys].[Id] = [config].[Cluster_ResourceGroup_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_ResourceGroup_Keys].[ParentId]
;
GO
