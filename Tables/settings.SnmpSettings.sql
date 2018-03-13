CREATE TABLE [settings].[SnmpSettings]
(
[Id] [int] NOT NULL,
[Enable] [bit] NOT NULL,
[Server] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Port] [int] NOT NULL,
[CommunityString] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[AlertOnEscalate] [bit] NOT NULL,
[AlertOnEnded] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[SnmpSettings] ADD CONSTRAINT [SnmpSettings_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
