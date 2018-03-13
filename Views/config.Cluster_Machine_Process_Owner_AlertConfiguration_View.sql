SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[Cluster_Machine_Process_Owner_AlertConfiguration_View] AS SELECT[config].[Cluster_Machine_Process_Owner_AlertConfiguration].[Id] AS [Id], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_AlertType] AS [Cluster_Machine_Process_Owner_AlertType], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_SubType] AS [Cluster_Machine_Process_Owner_SubType], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_Configuration] AS [Cluster_Machine_Process_Owner_Configuration], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_Enabled] AS [Cluster_Machine_Process_Owner_Enabled], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_AlertNotification] AS [Cluster_Machine_Process_Owner_AlertNotification], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_EmailAddress] AS [Cluster_Machine_Process_Owner_EmailAddress], [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[_Version] AS [Cluster_Machine_Process_Owner_Version], [data].[Cluster_Keys].[_Name] AS [Cluster_Name], [data].[Cluster_Machine_Keys].[_Name] AS [Cluster_Machine_Name], [data].[Cluster_Machine_Process_Keys].[_Id] AS [Cluster_Machine_Process_Id], [data].[Cluster_Machine_Process_Keys].[_StartDate] AS [Cluster_Machine_Process_StartDate], [utils].[TicksToDateTime]([data].[Cluster_Machine_Process_Keys].[_StartDate]) AS [Cluster_Machine_Process_StartDate_DateTime] FROM [config].[Cluster_Machine_Process_Owner_AlertConfiguration] INNER JOIN [data].[Cluster_Machine_Process_Keys] ON [data].[Cluster_Machine_Process_Keys].[Id] = [config].[Cluster_Machine_Process_Owner_AlertConfiguration].[Id]
 INNER JOIN [data].[Cluster_Machine_Keys] ON [data].[Cluster_Machine_Keys].[Id] = [data].[Cluster_Machine_Process_Keys].[ParentId]
 INNER JOIN [data].[Cluster_Keys] ON [data].[Cluster_Keys].[Id] = [data].[Cluster_Machine_Keys].[ParentId]
;
GO
