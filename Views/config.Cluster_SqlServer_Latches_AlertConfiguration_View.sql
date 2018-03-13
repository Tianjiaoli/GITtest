SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_Latches_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_Latches_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_Latches_AlertType], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_Latches_SubType], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_Latches_Configuration], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_Latches_Enabled], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_Latches_AlertNotification], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_Latches_EmailAddress], [config].[Cluster_SqlServer_Latches_AlertConfiguration].[_Version] AS [Cluster_SqlServer_Latches_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name] FROM [config].[Cluster_SqlServer_Latches_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [config].[Cluster_SqlServer_Latches_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
