CREATE TABLE [dbo].[Table_1]
(
[id] [int] NOT NULL,
[name] [nchar] (10) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_1] ADD CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
