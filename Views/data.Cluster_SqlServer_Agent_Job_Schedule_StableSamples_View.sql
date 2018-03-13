SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples_View] AS SELECT[data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Agent_Job_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples].[_NextRunDate] AS [Cluster_SqlServer_Agent_Job_Schedule_NextRunDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples].[_NextRunDate]) AS [Cluster_SqlServer_Agent_Job_Schedule_NextRunDate_DateTime], [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Agent_Job_Keys].[_Name] AS [Cluster_SqlServer_Agent_Job_Name] FROM [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples] INNER JOIN [data].[Cluster_SqlServer_Agent_Job_Keys] ON [data].[Cluster_SqlServer_Agent_Job_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next time this job is scheduled to run', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_Schedule_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_Schedule_NextRunDate'
GO
