CREATE TABLE [data].[Cluster_SqlServer_Process_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_CumulativePrivilegedTime] [bigint] NULL,
[_CumulativeUserTime] [bigint] NULL,
[_PrivateBytes] [bigint] NULL,
[_VirtualBytes] [bigint] NULL,
[_WorkingSet] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Process_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_Process_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Process_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_Process_UnstableSamples_Cluster_SqlServer_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current size in bytes of the memory area that the SQL Server process is utilizing', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Process_UnstableSamples', 'COLUMN', N'_WorkingSet'
GO
