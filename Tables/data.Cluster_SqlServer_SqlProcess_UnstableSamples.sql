CREATE TABLE [data].[Cluster_SqlServer_SqlProcess_UnstableSamples]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_BlockingSessionId] [bigint] NULL,
[_BlockingSessionLoginTime] [bigint] NULL,
[_Command] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_CumulativeProcessorTime] [bigint] NULL,
[_DatabaseName] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_FullCommand] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_CumulativeReads] [bigint] NULL,
[_LastWaitType] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_MemoryUsage] [bigint] NULL,
[_OpenTransactions] [bigint] NULL,
[_CumulativeLogicalReads] [bigint] NULL,
[_Status] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_WaitResource] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_WaitTime] [bigint] NULL,
[_WaitType] [nvarchar] (max) COLLATE Latin1_General_BIN2 NULL,
[_TotalBlockingTime] [bigint] NULL,
[_QueryStartTime] [bigint] NULL,
[_CumulativeWrites] [bigint] NULL,
[_LastRequestEnd] [bigint] NULL,
[_LastRequestStart] [bigint] NULL,
[_SqlHandle] [varbinary] (max) NULL,
[_StatementEnd] [bigint] NULL,
[_StatementStart] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_SqlProcess_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_SqlProcess_UnstableSamples_Id_CollectionDate] PRIMARY KEY CLUSTERED  ([Id], [CollectionDate]) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_SqlProcess_UnstableSamples] ADD CONSTRAINT [Cluster_SqlServer_SqlProcess_UnstableSamples_Cluster_SqlServer_SqlProcess_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_SqlProcess_Keys] ([Id]) ON DELETE CASCADE
GO
