CREATE TABLE [settings].[Machines]
(
[Id] [uniqueidentifier] NOT NULL,
[CreatedDate] [bigint] NOT NULL,
[ModifiedDate] [bigint] NOT NULL,
[IsValid] [bit] NOT NULL,
[IsSuspended] [bit] NOT NULL,
[CredentialsDiscriminator] [int] NOT NULL,
[User] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[Domain] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[Password] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[ParentId] [uniqueidentifier] NOT NULL,
[Name] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[VirtualMachineHostName] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[Machines] ADD CONSTRAINT [Machines_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [settings].[Machines] ADD CONSTRAINT [Machines_ParentId_Name] UNIQUE NONCLUSTERED  ([ParentId], [Name]) ON [PRIMARY]
GO
ALTER TABLE [settings].[Machines] ADD CONSTRAINT [Machines_Clusters] FOREIGN KEY ([ParentId]) REFERENCES [settings].[Clusters] ([Id]) ON DELETE CASCADE
GO
