CREATE TABLE [settings].[UserAccount]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[UserName] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[PasswordHash] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[UserAccount] ADD CONSTRAINT [UserAccount_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [settings].[UserAccount] ADD CONSTRAINT [UserAccount_UserName] UNIQUE NONCLUSTERED  ([UserName]) ON [PRIMARY]
GO
