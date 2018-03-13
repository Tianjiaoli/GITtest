CREATE TABLE [data].[Cluster_SqlServer_Agent_Job_Keys]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[ParentId] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_Name] [nvarchar] (450) COLLATE Latin1_General_BIN2 NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_Keys] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_Keys_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Cluster_SqlServer_Agent_Job_Keys_CollectionDate] ON [data].[Cluster_SqlServer_Agent_Job_Keys] ([CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_Keys] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_Keys_ParentId__Name] UNIQUE NONCLUSTERED  ([ParentId], [_Name]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_Keys] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_Keys_Cluster_SqlServer_Keys] FOREIGN KEY ([ParentId]) REFERENCES [data].[Cluster_SqlServer_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of job in SQL Server', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_Keys', 'COLUMN', N'_Name'
GO
