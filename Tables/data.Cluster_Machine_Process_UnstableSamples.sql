CREATE TABLE [data].[Cluster_Machine_Process_UnstableSamples]
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
ALTER TABLE [data].[Cluster_Machine_Process_UnstableSamples] ADD CONSTRAINT [Cluster_Machine_Process_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_Process_UnstableSamples] ADD CONSTRAINT [Cluster_Machine_Process_UnstableSamples_Cluster_Machine_Process_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_Machine_Process_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Number of bytes reserved for exclusive use by this process', 'SCHEMA', N'data', 'TABLE', N'Cluster_Machine_Process_UnstableSamples', 'COLUMN', N'_PrivateBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current size in bytes of the virtual address space this process is using', 'SCHEMA', N'data', 'TABLE', N'Cluster_Machine_Process_UnstableSamples', 'COLUMN', N'_VirtualBytes'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current size in bytes of the memory area that the process is utilizing for code, threads, and data.', 'SCHEMA', N'data', 'TABLE', N'Cluster_Machine_Process_UnstableSamples', 'COLUMN', N'_WorkingSet'
GO
