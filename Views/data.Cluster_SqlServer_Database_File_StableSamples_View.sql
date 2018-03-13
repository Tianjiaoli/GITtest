SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [data].[Cluster_SqlServer_Database_File_StableSamples_View] AS SELECT[data].[Cluster_SqlServer_Database_File_StableSamples].[Id] AS [Id], [data].[Cluster_SqlServer_Database_File_Keys].[CollectionDate] AS [IdCollectionDate], [data].[Cluster_SqlServer_Database_File_StableSamples].[_FileGroupName] AS [Cluster_SqlServer_Database_File_FileGroupName], [data].[Cluster_SqlServer_Database_File_StableSamples].[_FileName] AS [Cluster_SqlServer_Database_File_FileName], [data].[Cluster_SqlServer_Database_File_StableSamples].[_GrowthBytes] AS [Cluster_SqlServer_Database_File_GrowthBytes], [data].[Cluster_SqlServer_Database_File_StableSamples].[_GrowthPercent] AS [Cluster_SqlServer_Database_File_GrowthPercent], [data].[Cluster_SqlServer_Database_File_StableSamples].[_MaxSize] AS [Cluster_SqlServer_Database_File_MaxSize], [data].[Cluster_SqlServer_Database_File_StableSamples].[_Type] AS [Cluster_SqlServer_Database_File_Type], [data].[Cluster_SqlServer_Database_File_StableSamples].[CollectionDate] AS [CollectionDate], [utils].[TicksToDateTime]([data].[Cluster_SqlServer_Database_File_StableSamples].[CollectionDate]) AS [CollectionDate_DateTime], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_SqlServer_Keys].[_Name] AS [Cluster_SqlServer_Name], [data].[Cluster_SqlServer_Database_Keys].[_Name] AS [Cluster_SqlServer_Database_Name], [data].[Cluster_SqlServer_Database_File_Keys].[_Name] AS [Cluster_SqlServer_Database_File_Name] FROM [data].[Cluster_SqlServer_Database_File_StableSamples] INNER JOIN [data].[Cluster_SqlServer_Database_File_Keys] ON [data].[Cluster_SqlServer_Database_File_Keys].[Id] = [data].[Cluster_SqlServer_Database_File_StableSamples].[Id]
 INNER JOIN [data].[Cluster_SqlServer_Database_Keys] ON [data].[Cluster_SqlServer_Database_Keys].[Id] = [data].[Cluster_SqlServer_Database_File_Keys].[ParentId]
 INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[Id] = [data].[Cluster_SqlServer_Database_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_SqlServer_Keys].[ParentId]
;
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the file group to which the database file belongs', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Database_File_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Database_File_FileGroupName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Full name and path of the database data or log file on disk', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Database_File_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Database_File_FileName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'File autogrowth settings for this data or log file', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Database_File_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Database_File_GrowthBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Autogrowth setting for Maximum File Size', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Database_File_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Database_File_MaxSize'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Log file or data file', 'SCHEMA', N'data', 'VIEW', N'Cluster_SqlServer_Database_File_StableSamples_View', 'COLUMN', N'Cluster_SqlServer_Database_File_Type'
GO
