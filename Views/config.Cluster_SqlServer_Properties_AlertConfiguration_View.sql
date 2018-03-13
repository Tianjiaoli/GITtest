SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_Properties_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_Properties_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_Properties_AlertType], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_Properties_SubType], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_Properties_Configuration], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_Properties_Enabled], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_Properties_AlertNotification], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_Properties_EmailAddress], [config].[Cluster_SqlServer_Properties_AlertConfiguration].[_Version] AS [Cluster_SqlServer_Properties_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name] FROM [config].[Cluster_SqlServer_Properties_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [config].[Cluster_SqlServer_Properties_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
