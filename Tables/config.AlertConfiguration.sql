CREATE TABLE [config].[AlertConfiguration]
(
[_AlertType] [bigint] NOT NULL,
[_Configuration] [xml] NOT NULL,
[_Enabled] [bit] NOT NULL,
[_AlertNotification] [bigint] NOT NULL,
[_EmailAddress] [nvarchar] (max) COLLATE Latin1_General_BIN2 NOT NULL,
[_Version] [bigint] NOT NULL,
[_SubType] [bigint] NOT NULL CONSTRAINT [DF_AlertConfiguration__SubType] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [config].[AlertConfiguration] ADD CONSTRAINT [AlertConfiguration__AlertType__SubType] PRIMARY KEY CLUSTERED  ([_AlertType], [_SubType]) ON [PRIMARY]
GO
