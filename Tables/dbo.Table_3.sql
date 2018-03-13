CREATE TABLE [dbo].[Table_3]
(
[d] [int] NOT NULL,
[sd] [nchar] (10) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_3] ADD CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED  ([d]) ON [PRIMARY]
GO
