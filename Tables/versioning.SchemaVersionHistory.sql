CREATE TABLE [versioning].[SchemaVersionHistory]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Date] [datetime] NOT NULL,
[CodeVersion] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[SchemaVersion] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [versioning].[SchemaVersionHistory] ADD CONSTRAINT [SchemaVersionHistory_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
