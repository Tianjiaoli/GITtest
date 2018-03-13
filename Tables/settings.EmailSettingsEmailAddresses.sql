CREATE TABLE [settings].[EmailSettingsEmailAddresses]
(
[EmailSettingsId] [int] NOT NULL,
[Idx] [int] NOT NULL,
[Email] [nvarchar] (255) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[EmailSettingsEmailAddresses] ADD CONSTRAINT [EmailSettingsAddress] FOREIGN KEY ([EmailSettingsId]) REFERENCES [settings].[EmailSettings] ([Id])
GO
