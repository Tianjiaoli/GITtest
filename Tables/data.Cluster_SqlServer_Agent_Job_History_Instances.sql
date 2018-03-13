CREATE TABLE [data].[Cluster_SqlServer_Agent_Job_History_Instances]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_Message] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_RunDuration] [bigint] NULL,
[_RunStatus] [bigint] NULL,
[_SqlMessageId] [bigint] NULL,
[_SqlSeverity] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_History_Instances] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_History_Instances_Id] PRIMARY KEY CLUSTERED  ([Id]) WITH (IGNORE_DUP_KEY=ON) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Agent_Job_History_Instances] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_History_Instances_Cluster_SqlServer_Agent_Job_History_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Agent_Job_History_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Returned information for the job', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_History_Instances', 'COLUMN', N'_Message'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Length of time job ran', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_History_Instances', 'COLUMN', N'_RunDuration'
GO
EXEC sp_addextendedproperty N'MS_Description', N'SQL Server status code for this job', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_History_Instances', 'COLUMN', N'_RunStatus'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Text of SQL Server error for this job', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_History_Instances', 'COLUMN', N'_SqlMessageId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Severity code for job error message', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Agent_Job_History_Instances', 'COLUMN', N'_SqlSeverity'
GO
