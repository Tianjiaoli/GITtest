CREATE TABLE [data].[Cluster_SqlServer_SqlText_Instances]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_SqlText] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_SqlText_Instances] ADD CONSTRAINT [Cluster_SqlServer_SqlText_Instances_Id] PRIMARY KEY CLUSTERED  ([Id]) WITH (IGNORE_DUP_KEY=ON) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_SqlText_Instances] ADD CONSTRAINT [Cluster_SqlServer_SqlText_Instances_Cluster_SqlServer_SqlText_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_SqlText_Keys] ([Id]) ON DELETE CASCADE
GO
