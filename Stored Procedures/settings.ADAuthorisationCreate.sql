SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [settings].[ADAuthorisationCreate]
    @principalId INT,
    @groupName NVARCHAR(255),
    @clusterName NVARCHAR(MAX)
AS
    BEGIN
        DECLARE @id INT;
        DECLARE @groupId UNIQUEIDENTIFIER;
        DECLARE @clusterId UNIQUEIDENTIFIER;
        SET NOCOUNT ON;

        BEGIN TRANSACTION
        BEGIN
            SELECT  @groupId = GroupId  FROM    settings.[Group]  WHERE   Name = @groupName;
            SELECT  @clusterId = Id  FROM    settings.Clusters  WHERE   Name = @clusterName;

			IF @groupId IS NULL AND @groupName IS NOT NULL
			BEGIN
               RAISERROR ('Group name is invalid', 15, 4 )
            END
			IF @clusterId IS NULL AND @clusterName IS NOT NULL
			BEGIN
                RAISERROR ('Cluster name is invalid', 15, 5 )
               
            END
							
			IF @groupId IS NULL AND @clusterId IS NULL
			BEGIN
                RAISERROR ('You need to specify either a valid Cluster name or group name', 15, 6 )
			END
			ELSE
			BEGIN

				INSERT  INTO [settings].[ActiveDirectoryPrincipalAuthorisation]
						([ActiveDirectoryPrincipalId],
						 [GroupId],
						 [ClusterId]
						)
				VALUES  (@principalId,
						 @groupId,
						 @clusterId
						);

				SET @id = (SELECT   AuthorisationId
						   FROM     [settings].[ActiveDirectoryPrincipalAuthorisation]
						   WHERE    AuthorisationId = @@Identity
						  );
			END
        END
        COMMIT TRANSACTION

        RETURN @id;
    END
GO
