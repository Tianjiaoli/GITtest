CREATE TABLE [data].[Cluster_SqlServer_SqlStatistics_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_CumulativeBatchRequests] [bigint] NULL,
[_CumulativeCompilations] [bigint] NULL,
[_CumulativeRecompilations] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_SqlStatistics_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_SqlStatistics_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_SqlStatistics_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_SqlStatistics_UnstableSamples_Cluster_SqlServer_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
