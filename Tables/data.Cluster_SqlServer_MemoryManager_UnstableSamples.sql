CREATE TABLE [data].[Cluster_SqlServer_MemoryManager_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_TargetServerMemoryBytes] [bigint] NULL,
[_TotalServerMemoryBytes] [bigint] NULL,
[_FreeMemoryBytes] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_MemoryManager_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_MemoryManager_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_MemoryManager_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_MemoryManager_UnstableSamples_Cluster_SqlServer_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Estimate of memory required by this SQL Server instance', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_MemoryManager_UnstableSamples', 'COLUMN', N'_TargetServerMemoryBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Amount of memory allocated to this SQL Server instance', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_MemoryManager_UnstableSamples', 'COLUMN', N'_TotalServerMemoryBytes'
GO
