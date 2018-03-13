CREATE TABLE [config].[Cluster_AvailabilityGroup_Replica_AlertConfiguration]
(
[Id] [bigint] NOT NULL,
[_AlertType] [bigint] NOT NULL,
[_SubType] [bigint] NOT NULL CONSTRAINT [DF_Cluster_AvailabilityGroup_Replica_AlertConfiguration__SubType] DEFAULT ((0)),
[_Configuration] [xml] NOT NULL,
[_Enabled] [bit] NOT NULL,
[_AlertNotification] [bigint] NOT NULL,
[_EmailAddress] [nvarchar] (max) COLLATE Latin1_General_BIN2 NOT NULL,
[_Version] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [config].[Cluster_AvailabilityGroup_Replica_AlertConfiguration] ADD CONSTRAINT [Cluster_AvailabilityGroup_Replica_AlertConfiguration_Id__AlertType__SubType] PRIMARY KEY CLUSTERED  ([Id], [_AlertType], [_SubType]) ON [PRIMARY]
GO
ALTER TABLE [config].[Cluster_AvailabilityGroup_Replica_AlertConfiguration] ADD CONSTRAINT [Cluster_AvailabilityGroup_Replica_AlertConfiguration_Cluster_AvailabilityGroup_Replica_Keys] FOREIGN KEY ([Id]) REFERENCES [data].[Cluster_AvailabilityGroup_Replica_Keys] ([Id]) ON DELETE CASCADE
GO
