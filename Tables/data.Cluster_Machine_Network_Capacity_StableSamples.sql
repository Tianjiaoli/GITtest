CREATE TABLE [data].[Cluster_Machine_Network_Capacity_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_BandwidthBitsPerSecond] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_Network_Capacity_StableSamples] ADD CONSTRAINT [Cluster_Machine_Network_Capacity_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_Machine_Network_Capacity_StableSamples] ADD CONSTRAINT [Cluster_Machine_Network_Capacity_StableSamples_Cluster_Machine_Network_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_Machine_Network_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current bandwith of the network interface (bits per second)', 'SCHEMA', N'data', 'TABLE', N'Cluster_Machine_Network_Capacity_StableSamples', 'COLUMN', N'_BandwidthBitsPerSecond'
GO
