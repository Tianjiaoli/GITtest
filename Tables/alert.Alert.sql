CREATE TABLE [alert].[Alert]
(
[AlertId] [bigint] NOT NULL,
[AlertType] [bigint] NOT NULL,
[TargetObject] [nvarchar] (450) COLLATE Latin1_General_BIN2 NOT NULL,
[Read] [bit] NOT NULL,
[SubType] [bigint] NOT NULL CONSTRAINT [Alert_SubType_DF] DEFAULT ((0)),
[LastUpdate] [bigint] NOT NULL,
[Raised] [bigint] NOT NULL,
[LastSeverity] [int] NOT NULL,
[WorstSeverity] [int] NOT NULL,
[Cleared] [bit] NULL,
[ClearedDate] [bigint] NULL,
[LastComment] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[RootCir] [nvarchar] (450) COLLATE Latin1_General_BIN2 NULL,
[GroupCir] [nvarchar] (450) COLLATE Latin1_General_BIN2 NULL
) ON [PRIMARY]
GO
ALTER TABLE [alert].[Alert] ADD CONSTRAINT [Alert_AlertId] PRIMARY KEY CLUSTERED  ([AlertId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Alert_Type] ON [alert].[Alert] ([AlertType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Alert_TargetObject] ON [alert].[Alert] ([TargetObject]) ON [PRIMARY]
GO
