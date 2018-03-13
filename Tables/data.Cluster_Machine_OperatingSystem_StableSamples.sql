CREATE TABLE [data].[Cluster_Machine_OperatingSystem_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_Caption] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_ServicePack] [nvarchar] (255) COLLATE Latin1_General_BIN2 NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_OperatingSystem_StableSamples] ADD CONSTRAINT [Cluster_Machine_OperatingSystem_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_OperatingSystem_StableSamples] ADD CONSTRAINT [Cluster_Machine_OperatingSystem_StableSamples_Cluster_Machine_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_Machine_Keys] ([Id]) ON DELETE CASCADE
GO
