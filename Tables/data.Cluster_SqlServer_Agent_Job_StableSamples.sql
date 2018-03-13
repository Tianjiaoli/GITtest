CREATE TABLE [data].[Cluster_SqlServer_Agent_Job_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_CategoryId] [bigint] NULL,
[_DateModified] [bigint] NULL,
[_Description] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_Enabled] [bit] NULL,
[_Owner] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_OwnerSid] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_VersionNumber] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_StableSamples_Cluster_SqlServer_Agent_Job_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Agent_Job_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Category of job in SQL Server', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_StableSamples', 'COLUMN', N'_CategoryId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Time and date this job was last modified', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_StableSamples', 'COLUMN', N'_DateModified'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Current state of the job : whether it is enabled or disabled', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_StableSamples', 'COLUMN', N'_Enabled'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Version number of job', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_StableSamples', 'COLUMN', N'_VersionNumber'
GO
