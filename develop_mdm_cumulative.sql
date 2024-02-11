INSERT INTO develop_mdm_cumulative ([Meter_Number], [Import_Date], [Recorded_Date], [Cumulative_Usage], [Missing_Interval])
SELECT [Column 7] AS [Meter_Number], FORMAT (getdate(), 'yyyy-MM-dd HH:mm:ss') AS [Import_Date], FORMAT ( DATEADD (DAY, -1, CONVERT (datetime, LEFT(CAST([Interval001] as bigint),8))), 'yyyy-MM-dd') AS [Recorded_Date], CAST([Usage001] as float) AS [Cumulative_Usage], CAST([Missing001] as varchar) AS [Missing_Interval]
FROM dbo.staging_mdm
WHERE [Column 13] = 1
