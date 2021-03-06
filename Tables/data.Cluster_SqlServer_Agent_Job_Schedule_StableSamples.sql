CREATE TABLE [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_NextRunDate] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_Schedule_StableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_Schedule_StableSamples] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_Schedule_StableSamples_Cluster_SqlServer_Agent_Job_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Agent_Job_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Next time this job is scheduled to run', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_Schedule_StableSamples', 'COLUMN', N'_NextRunDate'
GO
