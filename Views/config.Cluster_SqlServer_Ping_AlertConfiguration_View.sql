SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_Ping_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_Ping_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_Ping_AlertType], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_Ping_SubType], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_Ping_Configuration], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_Ping_Enabled], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_Ping_AlertNotification], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_Ping_EmailAddress], [config].[Cluster_SqlServer_Ping_AlertConfiguration].[_Version] AS [Cluster_SqlServer_Ping_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name] FROM [config].[Cluster_SqlServer_Ping_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [config].[Cluster_SqlServer_Ping_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
