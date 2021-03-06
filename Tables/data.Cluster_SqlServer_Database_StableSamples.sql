CREATE TABLE [data].[Cluster_SqlServer_Database_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_AutoCreateStatistics] [bit] NULL,
[_AutoShrink] [bit] NULL,
[_Collation] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_CompatibilityLevel] [bigint] NULL,
[_CreateDate] [bigint] NULL,
[_PageVerify] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_RecoveryModel] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_State] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_DatabaseId] [bigint] NULL,
[_ReadOnly] [bit] NULL,
[_Standby] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Database_StableSamples_Cluster_SqlServer_Database_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Database_Keys] ([Id]) ON DELETE CASCADE
GO
