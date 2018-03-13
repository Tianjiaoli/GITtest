SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration_View] AS SELECT[config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[Id] AS [Id], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_AlertType] AS [Cluster_SqlServer_ExtendedEvents_AlertType], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_SubType] AS [Cluster_SqlServer_ExtendedEvents_SubType], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_Configuration] AS [Cluster_SqlServer_ExtendedEvents_Configuration], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_Enabled] AS [Cluster_SqlServer_ExtendedEvents_Enabled], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_AlertNotification] AS [Cluster_SqlServer_ExtendedEvents_AlertNotification], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_EmailAddress] AS [Cluster_SqlServer_ExtendedEvents_EmailAddress], [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[_Version] AS [Cluster_SqlServer_ExtendedEvents_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_ExtendedEvents_Keys].[_EventName] AS [Cluster_SqlServer_ExtendedEvents_EventName], [data].[Cluster_SqlServer_ExtendedEvents_Keys].[_Sequence] AS [Cluster_SqlServer_ExtendedEvents_Sequence], [data].[Cluster_SqlServer_ExtendedEvents_Keys].[_TimeStamp] AS [Cluster_SqlServer_ExtendedEvents_TimeStamp], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_ExtendedEvents_Keys].[_TimeStamp]) AS [Cluster_SqlServer_ExtendedEvents_TimeStamp_DateTime] FROM [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration] INNER JOIN [data].[Cluster_SqlServer_ExtendedEvents_Keys] ON [data].[Cluster_SqlServer_ExtendedEvents_Keys].[Id] = [config].[Cluster_SqlServer_ExtendedEvents_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_ExtendedEvents_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
