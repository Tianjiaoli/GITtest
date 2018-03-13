SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_Agent_Job_StableSamples_View] AS SELECT[data].[Cluster_SqlServer_Agent_Job_StableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Agent_Job_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_CategoryId] AS [Cluster_SqlServer_Agent_Job_CategoryId], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_DateModified] AS [Cluster_SqlServer_Agent_Job_DateModified], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Agent_Job_StableSamples].[_DateModified]) AS [Cluster_SqlServer_Agent_Job_DateModified_DateTime], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_Description] AS [Cluster_SqlServer_Agent_Job_Description], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_Enabled] AS [Cluster_SqlServer_Agent_Job_Enabled], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_Owner] AS [Cluster_SqlServer_Agent_Job_Owner], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_OwnerSid] AS [Cluster_SqlServer_Agent_Job_OwnerSid], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[_VersionNumber] AS [Cluster_SqlServer_Agent_Job_VersionNumber], [data].[Cluster_SqlServer_Agent_Job_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Agent_Job_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Agent_Job_Keys].[_Name] AS [Cluster_SqlServer_Agent_Job_Name] FROM [data].[Cluster_SqlServer_Agent_Job_StableSamples] INNER JOIN [data].[Cluster_SqlServer_Agent_Job_Keys] ON [data].[Cluster_SqlServer_Agent_Job_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_StableSamples].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Agent_Job_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category of job in SQL Server', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_CategoryId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Time and date this job was last modified', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_DateModified'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current state of the job : whether it is enabled or disabled', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_Enabled'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Version number of job', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Agent_Job_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Agent_Job_VersionNumber'
GO
