SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [data].[Cluster_SqlServer_Database_File_StableSamples_Removable]
(
    @Cluster_Name AS NVARCHAR(450)
    , @Cluster_SqlServer_Name AS NVARCHAR(450)
    , @Cluster_SqlServer_Database_Name AS NVARCHAR(450)
    , @Cluster_SqlServer_Database_File_Name AS NVARCHAR(450)
)
RETURNS TABLE
AS
RETURN

SELECT [data].[Cluster_SqlServer_Database_File_StableSamples].[Id], [data].[Cluster_SqlServer_Database_File_StableSamples].[CollectionDate]
FROM [data].[Cluster_Keys]
INNER JOIN [data].[Cluster_SqlServer_Keys] ON [data].[Cluster_SqlServer_Keys].[ParentId] = [data].[Cluster_Keys].[Id]
INNER JOIN [data].[Cluster_SqlServer_Database_Keys] ON [data].[Cluster_SqlServer_Database_Keys].[ParentId] = [data].[Cluster_SqlServer_Keys].[Id]
INNER JOIN [data].[Cluster_SqlServer_Database_File_Keys] ON [data].[Cluster_SqlServer_Database_File_Keys].[ParentId] = [data].[Cluster_SqlServer_Database_Keys].[Id]
INNER JOIN [data].[Cluster_SqlServer_Database_File_StableSamples] ON [data].[Cluster_SqlServer_Database_File_StableSamples].[Id] = [data].[Cluster_SqlServer_Database_File_Keys].[Id]
 WHERE  (@Cluster_Name IS NULL OR [data].[Cluster_Keys].[_Name] = @Cluster_Name)
 AND  (@Cluster_SqlServer_Name IS NULL OR [data].[Cluster_SqlServer_Keys].[_Name] = @Cluster_SqlServer_Name)
 AND  (@Cluster_SqlServer_Database_Name IS NULL OR [data].[Cluster_SqlServer_Database_Keys].[_Name] = @Cluster_SqlServer_Database_Name)
 AND  (@Cluster_SqlServer_Database_File_Name IS NULL OR [data].[Cluster_SqlServer_Database_File_Keys].[_Name] = @Cluster_SqlServer_Database_File_Name)
GO
