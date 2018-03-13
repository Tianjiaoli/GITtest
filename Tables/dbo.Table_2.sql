CREATE TABLE [dbo].[Table_2]
(
[id] [int] NOT NULL,
[address] [nchar] (10) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_2] ADD CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
