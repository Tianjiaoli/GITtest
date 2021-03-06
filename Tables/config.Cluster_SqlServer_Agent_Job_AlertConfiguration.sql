CREATE TABLE [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration]
(
[Id] [bigint] NOT NULL,
[_AlertType] [bigint] NOT NULL,
[_Configuration] [xml] NOT NULL,
[_Enabled] [bit] NOT NULL,
[_AlertNotification] [bigint] NOT NULL,
[_EmailAddress] [nvarchar] (max) COLLATE Latin1_General_BIN2 NOT NULL,
[_Version] [bigint] NOT NULL,
[_SubType] [bigint] NOT NULL CONSTRAINT [DF_Cluster_SqlServer_Agent_Job_AlertConfiguration__SubType] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_AlertConfiguration_Id__AlertType__SubType] PRIMARY KEY CLUSTERED  ([Id], [_AlertType], [_SubType]) ON [PRIMARY]
GO
ALTER TABLE [config].[Cluster_SqlServer_Agent_Job_AlertConfiguration] ADD CONSTRAINT [Cluster_SqlServer_Agent_Job_AlertConfiguration_Cluster_SqlServer_Agent_Job_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Agent_Job_Keys] ([Id]) ON DELETE CASCADE
GO
