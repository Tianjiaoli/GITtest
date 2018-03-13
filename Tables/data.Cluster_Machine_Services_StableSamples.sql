CREATE TABLE [data].[Cluster_Machine_Services_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_ServiceState] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_Startup] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_Services_StableSamples] ADD CONSTRAINT [Cluster_Machine_Services_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_Services_StableSamples] ADD CONSTRAINT [Cluster_Machine_Services_StableSamples_Cluster_Machine_Services_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_Machine_Services_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Only contains a set of SQL related Services', 'SCHEMA', N'data', 'TABLE', N'Cluster_Machine_Services_StableSamples', NULL, NULL
GO
