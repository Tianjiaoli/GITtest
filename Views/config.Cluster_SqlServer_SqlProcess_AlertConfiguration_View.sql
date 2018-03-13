SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_SqlProcess_AlertType], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_SqlProcess_SubType], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_SqlProcess_Configuration], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_SqlProcess_Enabled], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_SqlProcess_AlertNotification], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_SqlProcess_EmailAddress], [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[_Version] AS [Cluster_SqlServer_SqlProcess_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_SqlProcess_Keys].[_LoginTime] AS [Cluster_SqlServer_SqlProcess_LoginTime], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_SqlProcess_Keys].[_LoginTime]) AS [Cluster_SqlServer_SqlProcess_LoginTime_DateTime], [data].[Cluster_SqlServer_SqlProcess_Keys].[_SessionId] AS [Cluster_SqlServer_SqlProcess_SessionId] FROM [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_SqlProcess_Keys] ON [data].[Cluster_SqlServer_SqlProcess_Keys].[Id] = [config].[Cluster_SqlServer_SqlProcess_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_SqlProcess_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO