CREATE TABLE [settings].[LicenceActivations]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[SerialNumber] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[ActivationResponse] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[LicenceActivations] ADD CONSTRAINT [LicenceActivations_Id] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [settings].[LicenceActivations] ADD CONSTRAINT [LicenceActivations_SerialNumber] UNIQUE NONCLUSTERED  ([SerialNumber]) ON [PRIMARY]
GO
