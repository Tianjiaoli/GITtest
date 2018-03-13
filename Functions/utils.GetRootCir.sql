SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [utils].[GetRootCir]
    (
      @TargetObject NVARCHAR(450)
    )
RETURNS NVARCHAR(450)
    BEGIN
        DECLARE @MachinePos AS INT = CHARINDEX('7:Machine,1,4:Name,s',
                                               @TargetObject);
        DECLARE @SqlPos AS INT = CHARINDEX('9:SqlServer,1,4:Name,s',
                                           @TargetObject);
        DECLARE @AgPos AS INT = CHARINDEX('17:AvailabilityGroup,1,4:Name,s',
                                          @TargetObject);

        RETURN CASE WHEN @MachinePos > 0
             THEN SUBSTRING(@TargetObject, 1,
                            CHARINDEX(',', @TargetObject, @MachinePos + 20))
             WHEN @SqlPos > 0
             THEN SUBSTRING(@TargetObject, 1,
                            CHARINDEX(',', @TargetObject, @SqlPos + 22))
             ELSE SUBSTRING(@TargetObject, 1,
                            CHARINDEX(',', @TargetObject, @AgPos + 31))
        END
    END
GO
