CREATE TABLE [data].[Cluster_SqlServer_AzureDb_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_PercentCpu] [float] NULL,
[_PercentIo] [float] NULL,
[_PercentLogWrite] [float] NULL,
[_PercentMemoryUsed] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_AzureDb_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_AzureDb_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_AzureDb_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_AzureDb_UnstableSamples_Cluster_SqlServer_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
