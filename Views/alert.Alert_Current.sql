SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [alert].[Alert_Current]
AS
SELECT
  a.AlertType as AlertType,
  a.SubType as SubType,
  a.AlertId,
  a.RootCir,
  ISNULL(GroupCir, utils.GetGroupCir(TargetObject, a.AlertType)) as GroupCir,
  a.TargetObject,
  a.[Read],
  at.[Event],
  at.[Monitoring],
  a.[LastUpdate],
  a.[Raised],
  a.[LastSeverity],
  a.[WorstSeverity],
  a.[Cleared],
  a.[ClearedDate],
  a.[LastComment]
FROM
  alert.Alert a, alert.Alert_Type at
WHERE
  a.AlertType = at.AlertType
GO
