CREATE TABLE [settings].[VMwareHosts]
(
[Id] [uniqueidentifier] NOT NULL,
[CreatedDate] [bigint] NOT NULL,
[ModifiedDate] [bigint] NOT NULL,
[IsValid] [bit] NOT NULL,
[IsSuspended] [bit] NOT NULL,
[User] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[Password] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[Name] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[RequestedLicenceLevel] [int] NOT NULL,
[EffectiveLicenceLevel] [int] NOT NULL,
[AuthenticationMode] [int] NOT NULL CONSTRAINT [VMwareHosts_df_AuthenticationMode] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [settings].[VMwareHosts] ADD CONSTRAINT [VMwareHosts_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [settings].[VMwareHosts] ADD CONSTRAINT [VMwareHosts_Name] UNIQUE NONCLUSTERED  ([Name]) ON [PRIMARY]
GO
