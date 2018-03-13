CREATE TABLE [data].[Cluster_SqlServer_Database_BackupType_Backup_Instances]
(
[Id] [bigint] NOT NULL,
[CollectionDate] [bigint] NOT NULL,
[_FinishDate] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_BackupType_Backup_Instances] ADD CONSTRAINT [Cluster_SqlServer_Database_BackupType_Backup_Instances_Id] PRIMARY KEY CLUSTERED  ([Id]) WITH (IGNORE_DUP_KEY=ON) ON [PRIMARY]
GO
ALTER TABLE [data].[Cluster_SqlServer_Database_BackupType_Backup_Instances] ADD CONSTRAINT [Cluster_SqlServer_Database_BackupType_Backup_Instances_Cluster_SqlServer_Database_BackupType_Backup_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_SqlServer_Database_BackupType_Backup_Keys] ([Id]) ON DELETE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', N'Last backup of this database - end time of backup', 'SCHEMA', N'data', 'TABLE', N'Cluster_SqlServer_Database_BackupType_Backup_Instances', 'COLUMN', N'_FinishDate'
GO
