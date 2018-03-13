CREATE TABLE [data].[Cluster_Machine_LogicalDisk_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_CumulativeIdleTime] [bigint] NULL,
[_CumulativeReadBytes] [bigint] NULL,
[_CumulativeReads] [bigint] NULL,
[_CumulativeReadTime] [bigint] NULL,
[_CumulativeWriteBytes] [bigint] NULL,
[_CumulativeWrites] [bigint] NULL,
[_CumulativeWriteTime] [bigint] NULL,
[_FreeBytes] [bigint] NULL,
[_AverageSecPerRead] [bigint] NULL,
[_AverageSecPerWrite] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_LogicalDisk_UnstableSamples] ADD CONSTRAINT [Cluster_Machine_LogicalDisk_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_LogicalDisk_UnstableSamples] ADD CONSTRAINT [Cluster_Machine_LogicalDisk_UnstableSamples_Cluster_Machine_LogicalDisk_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_Machine_LogicalDisk_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Space available on disk', 'SCHEMA', N'data', 'TABLE', N'Cluster_Machine_LogicalDisk_UnstableSamples', 'COLUMN', N'_FreeBytes'
GO
