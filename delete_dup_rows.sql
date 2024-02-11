DELETE T
FROM
(
SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY Meter_Number, Recorded_Date, Interval_Usage, Missing_Interval
              ORDER BY (SELECT NULL)
            )
FROM dbo.develop_mdm
) AS T
WHERE DupRank > 1 
