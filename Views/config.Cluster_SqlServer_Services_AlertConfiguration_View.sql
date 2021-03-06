SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_Services_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_Services_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_Services_AlertType], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_Services_SubType], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_Services_Configuration], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_Services_Enabled], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_Services_AlertNotification], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_Services_EmailAddress], [config].[Cluster_SqlServer_Services_AlertConfiguration].[_Version] AS [Cluster_SqlServer_Services_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Services_Keys].[_ServiceName] AS [Cluster_SqlServer_Services_ServiceName] FROM [config].[Cluster_SqlServer_Services_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_Services_Keys] ON [data].[Cluster_SqlServer_Services_Keys].[Id] = [config].[Cluster_SqlServer_Services_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Services_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
