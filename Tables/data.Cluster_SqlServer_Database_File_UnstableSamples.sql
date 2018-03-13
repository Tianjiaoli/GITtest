CREATE TABLE [data].[Cluster_SqlServer_Database_File_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_Size] [bigint] NULL,
[_UsedSize] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_File_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_File_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_File_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_File_UnstableSamples_Cluster_SqlServer_Database_File_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Database_File_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current size of database data or log file', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_UnstableSamples', 'COLUMN', N'_Size'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used size in file', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_File_UnstableSamples', 'COLUMN', N'_UsedSize'
GO
