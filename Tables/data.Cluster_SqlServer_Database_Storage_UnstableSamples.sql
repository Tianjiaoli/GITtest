CREATE TABLE [data].[Cluster_SqlServer_Database_Storage_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_TotalLogUsedBytes] [bigint] NULL,
[_TotalDataUsedBytes] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_Storage_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_Storage_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_Storage_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_Storage_UnstableSamples_Cluster_SqlServer_Database_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Database_Keys] ([Id]) ON DELETE CASCADE
GO
