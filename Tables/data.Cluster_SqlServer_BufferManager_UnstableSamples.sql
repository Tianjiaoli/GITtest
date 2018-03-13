CREATE TABLE [data].[Cluster_SqlServer_BufferManager_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_BufferCacheHitRatio] [float] NULL,
[_PageLifeExpectancy] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_BufferManager_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_BufferManager_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_BufferManager_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_BufferManager_UnstableSamples_Cluster_SqlServer_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Percentage of data pages read from the buffer cache rather than from the physical disk', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_BufferManager_UnstableSamples', 'COLUMN', N'_BufferCacheHitRatio'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of seconds a page will stay in the buffer cache without being referenced', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_BufferManager_UnstableSamples', 'COLUMN', N'_PageLifeExpectancy'
GO
