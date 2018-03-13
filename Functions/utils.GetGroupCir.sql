SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [utils].[GetGroupCir]
(
    @TargetObject NVARCHAR(450),
    @AlertType INT
)
RETURNS NVARCHAR(450)
BEGIN
    DECLARE @ClusterName VARCHAR(100) = '7:Cluster,1,4:Name,s'
    DECLARE @MachineName VARCHAR(100) = '7:Machine,1,4:Name,s'
    DECLARE @SqlName VARCHAR(100) = '9:SqlServer,1,4:Name,s'
    DECLARE @AgName VARCHAR(100) = '17:AvailabilityGroup,1,4:Name,s'
    DECLARE @DatabaseName VARCHAR(100) = '8:Database,1,4:Name,s'
    DECLARE @LogicalDiskName VARCHAR(100) = 'LogicalDisk,1,4:Name,s'
    DECLARE @JobFailingName VARCHAR(100) ='5:Agent,0,3:Job,1,4:Name,s'

    DECLARE @group AS INT = CASE @AlertType 
		WHEN 1 THEN 2 --Processor utilization -> Machine
		WHEN 2 THEN 3 --SQL Server error log entry -> Sql Instance
		WHEN 3 THEN 3 --Cluster failover -> Sql Instance
		WHEN 4 THEN 3 --Deadlock -> Sql Instance
		WHEN 5 THEN 2 --Processor under-utilization -> Machine
		WHEN 6 THEN 5 --Job failing -> Job Failing Name
		WHEN 7 THEN 2 --Machine unreachable -> Machine
		WHEN 8 THEN 3 --SQL Server instance unreachable -> Sql Instance
		WHEN 9 THEN 4 --Disk space -> Disk
		WHEN 10 THEN 2 --Physical memory -> Machine
		WHEN 11 THEN 0 --Blocking process -> Target
		WHEN 12 THEN 2 --Long-running query -> Machine
		WHEN 14 THEN 6 --Backup overdue -> Database
		WHEN 15 THEN 6 --Log backup overdue -> Database
		WHEN 16 THEN 6 --Database unavailable -> Database
		WHEN 17 THEN 6 --Page verification -> Database
		WHEN 18 THEN 6 --Integrity check overdue -> Database
		WHEN 19 THEN 6 --Fragmented indexes -> Database
		WHEN 24 THEN 5 --Job duration unusual -> Job Failing Name
		WHEN 25 THEN 2 --Clock skew -> Machine
		WHEN 27 THEN 3 --SQL Server Agent Service status -> Sql Instance
		WHEN 28 THEN 3 --SQL Server Reporting Service status -> Sql Instance
		WHEN 29 THEN 3 --SQL Server Full Text Search Service status -> Sql Instance
		WHEN 30 THEN 3 --SQL Server Analysis Service status -> Sql Instance
		WHEN 31 THEN 3 --SQL Server Integration Service status -> Sql Instance
		WHEN 33 THEN 3 --SQL Server Browser Service status -> Sql Instance
		WHEN 34 THEN 3 --SQL Server VSS Writer Service status -> Sql Instance
		WHEN 35 THEN 3 --Deadlock trace flag disabled -> Sql Instance
		WHEN 36 THEN 2 --Monitoring stopped (host machine credentials) -> Machine
		WHEN 37 THEN 3 --Monitoring stopped (SQL Server credentials) -> Sql Instance
		WHEN 38 THEN 2 --Monitoring error (host machine data collection) -> Machine
		WHEN 39 THEN 3 --Monitoring error (SQL Server data collection) -> Sql Instance
		WHEN 40 THEN 0 --Custom metric -> Target
		WHEN 41 THEN 0 --Custom metric collection error -> Target
		WHEN 42 THEN 1 --Availability group - failover -> Ag
		WHEN 43 THEN 1 --Availability group - listener offline -> Ag
		WHEN 44 THEN 1 --Availability group - query slowdown on primary due to synchronous replication -> Ag
		WHEN 45 THEN 1 --Availability group - replication falling behind -> Ag
		WHEN 46 THEN 1 --Availability group - replica not healthy -> Ag
		WHEN 47 THEN 1 --Availability group - not ready for automatic failover -> Ag
		WHEN 48 THEN 1 --Availability group - database not healthy -> Ag
		WHEN 49 THEN 3 --Deadlock (extended event) -> SQL Instance
		ELSE 0  

    END

    --1 = Ag
    --2 = Machine
    --3 = Sql Instance
    --4 = Disk
    --5 = Job Failing Name
    --6 = Database
    RETURN CASE @group
         WHEN 0 THEN @TargetObject
         WHEN 1 THEN SUBSTRING(@TargetObject, 1, CHARINDEX(',', @TargetObject, CHARINDEX(@AgName, @TargetObject) + LEN(@AgName)))
         WHEN 2 THEN SUBSTRING(@TargetObject, 1, CHARINDEX(',', @TargetObject, CHARINDEX(@MachineName, @TargetObject) + LEN(@MachineName)))
         WHEN 3 THEN SUBSTRING(@TargetObject, 1, CHARINDEX(',', @TargetObject, CHARINDEX(@SqlName, @TargetObject) + LEN(@SqlName)))
         WHEN 4 THEN SUBSTRING(@TargetObject, 1, CHARINDEX(',', @TargetObject, CHARINDEX(@LogicalDiskName, @TargetObject) + LEN(@LogicalDiskName)))
         WHEN 5 THEN SUBSTRING(@TargetObject, 1, CHARINDEX(',', @TargetObject, CHARINDEX(@JobFailingName, @TargetObject) + LEN(@JobFailingName)))
         WHEN 6 THEN SUBSTRING(@TargetObject, 1, CHARINDEX(',', @TargetObject, CHARINDEX(@DatabaseName, @TargetObject) + LEN(@DatabaseName)))
    END
END
GO
