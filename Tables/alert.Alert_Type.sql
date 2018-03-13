CREATE TABLE [alert].[Alert_Type]
(
[AlertType] [int] NOT NULL,
[Event] [tinyint] NOT NULL,
[Monitoring] [bit] NOT NULL,
[Name] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL CONSTRAINT [DF_Alert_Type_Name] DEFAULT (''),
[Description] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL CONSTRAINT [DF_Alert_Type_Description] DEFAULT (''),
[ShortName] [nvarchar] (28) COLLATE Latin1_General_CS_AS_KS_WS NULL
) ON [PRIMARY]
GO
ALTER TABLE [alert].[Alert_Type] ADD CONSTRAINT [Alert_Type_AlertType] PRIMARY KEY CLUSTERED  ([AlertType]) ON [PRIMARY]
GO
