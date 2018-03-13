SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_Agent_Job_History_Instances_View] AS SELECT[data].[Cluster_SqlServer_Agent_Job_History_Instances].[Id] AS [Id], [data].[Cluster_SqlServer_Agent_Job_History_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_Agent_Job_History_Instances].[_Message] AS [Cluster_SqlServer_Agent_Job_History_Message], [data].[Cluster_SqlServer_Agent_Job_History_Instances].[_RunDuration] AS [Cluster_SqlServer_Agent_Job_History_RunDuration], [data].[Cluster_SqlServer_Agent_Job_History_Instances].[_RunStatus] AS [Cluster_SqlServer_Agent_Job_History_RunStatus], [data].[Cluster_SqlServer_Agent_Job_History_Instances].[_SqlMessageId] AS [Cluster_SqlServer_Agent_Job_History_SqlMessageId], [data].[Cluster_SqlServer_Agent_Job_History_Instances].[_SqlSeverity] AS [Cluster_SqlServer_Agent_Job_History_SqlSeverity], [data].[Cluster_SqlServer_Agent_Job_History_Instances].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Agent_Job_History_Instances].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Agent_Job_Keys].[_Name] AS [Cluster_SqlServer_Agent_Job_Name], [data].[Cluster_SqlServer_Agent_Job_History_Keys].[_Id] AS [Cluster_SqlServer_Agent_Job_History_Id], [data].[Cluster_SqlServer_Agent_Job_History_Keys].[_RunDate] AS [Cluster_SqlServer_Agent_Job_History_RunDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Agent_Job_History_Keys].[_RunDate]) AS [Cluster_SqlServer_Agent_Job_History_RunDate_DateTime] FROM [data].[Cluster_SqlServer_Agent_Job_History_Instances] INNER JOIN [data].[Cluster_SqlServer_Agent_Job_History_Keys] ON [data].[Cluster_SqlServer_Agent_Job_History_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_History_Instances].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Agent_Job_Keys] ON [data].[Cluster_SqlServer_Agent_Job_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_History_Keys].[ParentId]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Returned information for the job', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_History_Instances_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_History_Message'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Length of time job ran', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_History_Instances_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_History_RunDuration'
GO
EXEC sp_addextendedproperty N'MS_Description', N'SQL Server status code for this job', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_History_Instances_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_History_RunStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Text of SQL Server error for this job', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_History_Instances_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_History_SqlMessageId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Severity code for job error message', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_History_Instances_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_History_SqlSeverity'
GO
