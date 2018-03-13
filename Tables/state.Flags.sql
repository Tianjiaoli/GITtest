CREATE TABLE [state].[Flags]
(
[Category] [nvarchar] (256) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Key] [nvarchar] (256) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Value] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [state].[Flags] ADD CONSTRAINT [Flags_PK] PRIMARY KEY CLUSTERED  ([Category], [Key]) ON [PRIMARY]
GO
