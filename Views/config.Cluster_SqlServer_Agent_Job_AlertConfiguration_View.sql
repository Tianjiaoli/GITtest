SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_Agent_Job_AlertType], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_Agent_Job_SubType], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_Agent_Job_Configuration], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_Agent_Job_Enabled], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_Agent_Job_AlertNotification], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_Agent_Job_EmailAddress], [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[_Version] AS [Cluster_SqlServer_Agent_Job_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Agent_Job_Keys].[_Name] AS [Cluster_SqlServer_Agent_Job_Name] FROM [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_Agent_Job_Keys] ON [data].[Cluster_SqlServer_Agent_Job_Keys].[Id] = [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
