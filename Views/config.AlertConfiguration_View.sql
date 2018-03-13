SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [config].[AlertConfiguration_View] AS SELECT[config].[AlertConfiguration].[_AlertType] AS [AlertType], [config].[AlertConfiguration].[_SubType] AS [SubType], [config].[AlertConfiguration].[_Configuration] AS [Configuration], [config].[AlertConfiguration].[_Enabled] AS [Enabled], [config].[AlertConfiguration].[_AlertNotification] AS [AlertNotification], [config].[AlertConfiguration].[_EmailAddress] AS [EmailAddress], [config].[AlertConfiguration].[_Version] AS [Version] FROM [config].[AlertConfiguration];
GO
