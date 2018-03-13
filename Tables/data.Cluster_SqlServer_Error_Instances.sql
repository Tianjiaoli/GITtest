CREATE TABLE [data].[Cluster_SqlServer_Error_Instances]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_ProcessInfo] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_Text] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Error_Instances] ADD CONSTRAINT [Cluster_SqlServer_Error_Instances_Id] PRIMARY KEY CLUSTERED  ([Id]) WITH (IGNORE_DUP_KEY=ON) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Error_Instances] ADD CONSTRAINT [Cluster_SqlServer_Error_Instances_Cluster_SqlServer_Error_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Error_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Source of the error event, such as the name of the service or the SPID', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Error_Instances', 'COLUMN', N'_ProcessInfo'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Content of the error message', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Error_Instances', 'COLUMN', N'_Text'
GO
