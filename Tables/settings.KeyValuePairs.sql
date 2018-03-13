CREATE TABLE [settings].[KeyValuePairs]
(
[KeyName] [nvarchar] (50) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[KeyValue] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[KeyValueType] [nvarchar] (50) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [settings].[KeyValuePairs] ADD CONSTRAINT [CK_KeyValuePairValueIsValid] CHECK (([settings].[CheckKeyValuePairSetting]([KeyValue],[KeyValueType])=(1)))
GO
ALTER TABLE [settings].[KeyValuePairs] ADD CONSTRAINT [PK_KeyValuePairs] PRIMARY KEY CLUSTERED  ([KeyName]) ON [PRIMARY]
GO
