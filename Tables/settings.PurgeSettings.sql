CREATE TABLE [settings].[PurgeSettings]
(
[Id] [int] NOT NULL,
[GlobalEnable] [bit] NOT NULL,
[MachineBasicData] [int] NOT NULL,
[MachineProcessData] [int] NOT NULL,
[SqlBasicData] [int] NOT NULL,
[SqlDatabaseUnstableSamplesData] [int] NOT NULL,
[SqlProcessData] [int] NOT NULL,
[SqlTopQueriesData] [int] NOT NULL,
[SqlTraceData] [int] NOT NULL,
[Alert] [int] NOT NULL,
[CustomMetricsData] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[PurgeSettings] ADD CONSTRAINT [PurgeSettings_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
