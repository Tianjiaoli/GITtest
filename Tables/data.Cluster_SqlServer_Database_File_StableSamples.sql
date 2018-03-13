CREATE TABLE [data].[Cluster_SqlServer_Database_File_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_FileName] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_GrowthBytes] [bigint] NULL,
[_GrowthPercent] [float] NULL,
[_MaxSize] [bigint] NULL,
[_Type] [bigint] NULL,
[_FileGroupName] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_File_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_File_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_File_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_File_StableSamples_Cluster_SqlServer_Database_File_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Database_File_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the file group to which the database file belongs', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_StableSamples', 'COLUMN', N'_FileGroupName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Full name and path of the database data or log file on disk', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_StableSamples', 'COLUMN', N'_FileName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'File autogrowth settings for this data or log file', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_StableSamples', 'COLUMN', N'_GrowthBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Autogrowth setting for Maximum File Size', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_StableSamples', 'COLUMN', N'_MaxSize'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Log file or data file', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_StableSamples', 'COLUMN', N'_Type'
GO
