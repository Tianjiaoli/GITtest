CREATE TABLE [settings].[CustomMetrics]
(
[Id] [bigint] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Tsql] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Frequency] [bigint] NOT NULL,
[Description] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[Status] [tinyint] NOT NULL,
[UseRateOfChange] [bit] NOT NULL,
[Multiplier] [float] NOT NULL,
[Databases] [xml] NOT NULL,
[DatabaseSelectionMode] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[CustomMetrics] ADD CONSTRAINT [CustomMetrics_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
