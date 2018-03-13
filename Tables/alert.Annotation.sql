CREATE TABLE [alert].[Annotation]
(
[AnnotationId] [bigint] NOT NULL IDENTITY(1, 1),
[Date] [bigint] NOT NULL,
[InstanceName] [nvarchar] (450) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Description] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NOT NULL,
[Url] [nvarchar] (max) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[DatabaseName] [nvarchar] (128) COLLATE Latin1_General_CS_AS_KS_WS NULL,
[Source] [nvarchar] (50) COLLATE Latin1_General_CS_AS_KS_WS NULL
) ON [PRIMARY]
GO
ALTER TABLE [alert].[Annotation] ADD CONSTRAINT [PK_alert.Annotation] PRIMARY KEY CLUSTERED  ([AnnotationId]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Annotation_InstanceName_Date] ON [alert].[Annotation] ([InstanceName], [Date]) ON [PRIMARY]
GO
