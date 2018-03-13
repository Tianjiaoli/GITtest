CREATE TABLE [data].[Cluster_SqlServer_Properties_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_Collation] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_Edition] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_IsClustered] [bit] NULL,
[_IsSingleUser] [bit] NULL,
[_ProductLevel] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_ProductVersion] [nvarchar] (255) COLLATE Latin1_General_BIN2 NULL,
[_IsVirtualMachine] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Properties_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Properties_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Properties_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Properties_StableSamples_Cluster_SqlServer_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'From sys.dm_os_sys_info column virtual_machine_type Indicates whether SQL Server is running in a virtualized environment. 0 = NONE 1 = HYPERVISOR 2 = OTHER NULL = Could not collect (SQL Server is older than 2008R2)', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Properties_StableSamples', 'COLUMN', N'_IsVirtualMachine'
GO
