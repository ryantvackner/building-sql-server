/****** Script to Create Table for Developing MDM ******/
-- These are the final columns we want in our development table
INSERT INTO develop_mdm ([Meter_Number], [Import_Date], [Recorded_Date], [Interval_Usage], [Missing_Interval])
SELECT [Meter_Number], [Import_Date], [Recorded_Date], [Interval_Usage], [Missing_Interval] /*INTO develop_mdm*/
FROM (

SELECT [Column 7] AS [Meter_Number], FORMAT (getdate(), 'yyyy-MM-dd HH:mm:ss') AS [Import_Date], FORMAT (DATEADD (MINUTE, 0-(right([Column 12],2)), DATEADD (HOUR, -4-(left(right([Column 12],3),1)), CONVERT (datetime, LEFT([TIME],8) + ' ' + (LEFT(RIGHT([TIME],4),2) + ':' + RIGHT(RIGHT([TIME],4),2))))), 'yyyy-MM-dd HH:mm') AS [Recorded_Date], (LEFT(RIGHT([TIME],4),2) + ':' + RIGHT(RIGHT([TIME],4),2)) AS [Interval_Time], [KWH] AS [Interval_Usage], [MISS] AS [Missing_Interval]

FROM
(SELECT [Column 7], [Column 6], [Column 12],
CAST([Usage001] as float) as Usage001,
CAST([Usage002] as float) as Usage002,
CAST([Usage003] as float) as Usage003,
CAST([Usage004] as float) as Usage004,
CAST([Usage005] as float) as Usage005,
CAST([Usage006] as float) as Usage006,
CAST([Usage007] as float) as Usage007,
CAST([Usage008] as float) as Usage008,
CAST([Usage009] as float) as Usage009,
CAST([Usage010] as float) as Usage010,
CAST([Usage011] as float) as Usage011,
CAST([Usage012] as float) as Usage012,
CAST([Usage013] as float) as Usage013,
CAST([Usage014] as float) as Usage014,
CAST([Usage015] as float) as Usage015,
CAST([Usage016] as float) as Usage016,
CAST([Usage017] as float) as Usage017,
CAST([Usage018] as float) as Usage018,
CAST([Usage019] as float) as Usage019,
CAST([Usage020] as float) as Usage020,
CAST([Usage021] as float) as Usage021,
CAST([Usage022] as float) as Usage022,
CAST([Usage023] as float) as Usage023,
CAST([Usage024] as float) as Usage024,
CAST([Usage025] as float) as Usage025,
CAST([Usage026] as float) as Usage026,
CAST([Usage027] as float) as Usage027,
CAST([Usage028] as float) as Usage028,
CAST([Usage029] as float) as Usage029,
CAST([Usage030] as float) as Usage030,
CAST([Usage031] as float) as Usage031,
CAST([Usage032] as float) as Usage032,
CAST([Usage033] as float) as Usage033,
CAST([Usage034] as float) as Usage034,
CAST([Usage035] as float) as Usage035,
CAST([Usage036] as float) as Usage036,
CAST([Usage037] as float) as Usage037,
CAST([Usage038] as float) as Usage038,
CAST([Usage039] as float) as Usage039,
CAST([Usage040] as float) as Usage040,
CAST([Usage041] as float) as Usage041,
CAST([Usage042] as float) as Usage042,
CAST([Usage043] as float) as Usage043,
CAST([Usage044] as float) as Usage044,
CAST([Usage045] as float) as Usage045,
CAST([Usage046] as float) as Usage046,
CAST([Usage047] as float) as Usage047,
CAST([Usage048] as float) as Usage048,
CAST([Usage049] as float) as Usage049,
CAST([Usage050] as float) as Usage050,
CAST([Usage051] as float) as Usage051,
CAST([Usage052] as float) as Usage052,
CAST([Usage053] as float) as Usage053,
CAST([Usage054] as float) as Usage054,
CAST([Usage055] as float) as Usage055,
CAST([Usage056] as float) as Usage056,
CAST([Usage057] as float) as Usage057,
CAST([Usage058] as float) as Usage058,
CAST([Usage059] as float) as Usage059,
CAST([Usage060] as float) as Usage060,
CAST([Usage061] as float) as Usage061,
CAST([Usage062] as float) as Usage062,
CAST([Usage063] as float) as Usage063,
CAST([Usage064] as float) as Usage064,
CAST([Usage065] as float) as Usage065,
CAST([Usage066] as float) as Usage066,
CAST([Usage067] as float) as Usage067,
CAST([Usage068] as float) as Usage068,
CAST([Usage069] as float) as Usage069,
CAST([Usage070] as float) as Usage070,
CAST([Usage071] as float) as Usage071,
CAST([Usage072] as float) as Usage072,
CAST([Usage073] as float) as Usage073,
CAST([Usage074] as float) as Usage074,
CAST([Usage075] as float) as Usage075,
CAST([Usage076] as float) as Usage076,
CAST([Usage077] as float) as Usage077,
CAST([Usage078] as float) as Usage078,
CAST([Usage079] as float) as Usage079,
CAST([Usage080] as float) as Usage080,
CAST([Usage081] as float) as Usage081,
CAST([Usage082] as float) as Usage082,
CAST([Usage083] as float) as Usage083,
CAST([Usage084] as float) as Usage084,
CAST([Usage085] as float) as Usage085,
CAST([Usage086] as float) as Usage086,
CAST([Usage087] as float) as Usage087,
CAST([Usage088] as float) as Usage088,
CAST([Usage089] as float) as Usage089,
CAST([Usage090] as float) as Usage090,
CAST([Usage091] as float) as Usage091,
CAST([Usage092] as float) as Usage092,
CAST([Usage093] as float) as Usage093,
CAST([Usage094] as float) as Usage094,
CAST([Usage095] as float) as Usage095,
CAST([Usage096] as float) as Usage096,
CAST([Interval001] as bigint) as Interval001,
CAST([Interval002] as bigint) as Interval002,
CAST([Interval003] as bigint) as Interval003,
CAST([Interval004] as bigint) as Interval004,
CAST([Interval005] as bigint) as Interval005,
CAST([Interval006] as bigint) as Interval006,
CAST([Interval007] as bigint) as Interval007,
CAST([Interval008] as bigint) as Interval008,
CAST([Interval009] as bigint) as Interval009,
CAST([Interval010] as bigint) as Interval010,
CAST([Interval011] as bigint) as Interval011,
CAST([Interval012] as bigint) as Interval012,
CAST([Interval013] as bigint) as Interval013,
CAST([Interval014] as bigint) as Interval014,
CAST([Interval015] as bigint) as Interval015,
CAST([Interval016] as bigint) as Interval016,
CAST([Interval017] as bigint) as Interval017,
CAST([Interval018] as bigint) as Interval018,
CAST([Interval019] as bigint) as Interval019,
CAST([Interval020] as bigint) as Interval020,
CAST([Interval021] as bigint) as Interval021,
CAST([Interval022] as bigint) as Interval022,
CAST([Interval023] as bigint) as Interval023,
CAST([Interval024] as bigint) as Interval024,
CAST([Interval025] as bigint) as Interval025,
CAST([Interval026] as bigint) as Interval026,
CAST([Interval027] as bigint) as Interval027,
CAST([Interval028] as bigint) as Interval028,
CAST([Interval029] as bigint) as Interval029,
CAST([Interval030] as bigint) as Interval030,
CAST([Interval031] as bigint) as Interval031,
CAST([Interval032] as bigint) as Interval032,
CAST([Interval033] as bigint) as Interval033,
CAST([Interval034] as bigint) as Interval034,
CAST([Interval035] as bigint) as Interval035,
CAST([Interval036] as bigint) as Interval036,
CAST([Interval037] as bigint) as Interval037,
CAST([Interval038] as bigint) as Interval038,
CAST([Interval039] as bigint) as Interval039,
CAST([Interval040] as bigint) as Interval040,
CAST([Interval041] as bigint) as Interval041,
CAST([Interval042] as bigint) as Interval042,
CAST([Interval043] as bigint) as Interval043,
CAST([Interval044] as bigint) as Interval044,
CAST([Interval045] as bigint) as Interval045,
CAST([Interval046] as bigint) as Interval046,
CAST([Interval047] as bigint) as Interval047,
CAST([Interval048] as bigint) as Interval048,
CAST([Interval049] as bigint) as Interval049,
CAST([Interval050] as bigint) as Interval050,
CAST([Interval051] as bigint) as Interval051,
CAST([Interval052] as bigint) as Interval052,
CAST([Interval053] as bigint) as Interval053,
CAST([Interval054] as bigint) as Interval054,
CAST([Interval055] as bigint) as Interval055,
CAST([Interval056] as bigint) as Interval056,
CAST([Interval057] as bigint) as Interval057,
CAST([Interval058] as bigint) as Interval058,
CAST([Interval059] as bigint) as Interval059,
CAST([Interval060] as bigint) as Interval060,
CAST([Interval061] as bigint) as Interval061,
CAST([Interval062] as bigint) as Interval062,
CAST([Interval063] as bigint) as Interval063,
CAST([Interval064] as bigint) as Interval064,
CAST([Interval065] as bigint) as Interval065,
CAST([Interval066] as bigint) as Interval066,
CAST([Interval067] as bigint) as Interval067,
CAST([Interval068] as bigint) as Interval068,
CAST([Interval069] as bigint) as Interval069,
CAST([Interval070] as bigint) as Interval070,
CAST([Interval071] as bigint) as Interval071,
CAST([Interval072] as bigint) as Interval072,
CAST([Interval073] as bigint) as Interval073,
CAST([Interval074] as bigint) as Interval074,
CAST([Interval075] as bigint) as Interval075,
CAST([Interval076] as bigint) as Interval076,
CAST([Interval077] as bigint) as Interval077,
CAST([Interval078] as bigint) as Interval078,
CAST([Interval079] as bigint) as Interval079,
CAST([Interval080] as bigint) as Interval080,
CAST([Interval081] as bigint) as Interval081,
CAST([Interval082] as bigint) as Interval082,
CAST([Interval083] as bigint) as Interval083,
CAST([Interval084] as bigint) as Interval084,
CAST([Interval085] as bigint) as Interval085,
CAST([Interval086] as bigint) as Interval086,
CAST([Interval087] as bigint) as Interval087,
CAST([Interval088] as bigint) as Interval088,
CAST([Interval089] as bigint) as Interval089,
CAST([Interval090] as bigint) as Interval090,
CAST([Interval091] as bigint) as Interval091,
CAST([Interval092] as bigint) as Interval092,
CAST([Interval093] as bigint) as Interval093,
CAST([Interval094] as bigint) as Interval094,
CAST([Interval095] as bigint) as Interval095,
CAST([Interval096] as bigint) as Interval096,
CAST([Missing001] as varchar) as Missing001,
CAST([Missing002] as varchar) as Missing002,
CAST([Missing003] as varchar) as Missing003,
CAST([Missing004] as varchar) as Missing004,
CAST([Missing005] as varchar) as Missing005,
CAST([Missing006] as varchar) as Missing006,
CAST([Missing007] as varchar) as Missing007,
CAST([Missing008] as varchar) as Missing008,
CAST([Missing009] as varchar) as Missing009,
CAST([Missing010] as varchar) as Missing010,
CAST([Missing011] as varchar) as Missing011,
CAST([Missing012] as varchar) as Missing012,
CAST([Missing013] as varchar) as Missing013,
CAST([Missing014] as varchar) as Missing014,
CAST([Missing015] as varchar) as Missing015,
CAST([Missing016] as varchar) as Missing016,
CAST([Missing017] as varchar) as Missing017,
CAST([Missing018] as varchar) as Missing018,
CAST([Missing019] as varchar) as Missing019,
CAST([Missing020] as varchar) as Missing020,
CAST([Missing021] as varchar) as Missing021,
CAST([Missing022] as varchar) as Missing022,
CAST([Missing023] as varchar) as Missing023,
CAST([Missing024] as varchar) as Missing024,
CAST([Missing025] as varchar) as Missing025,
CAST([Missing026] as varchar) as Missing026,
CAST([Missing027] as varchar) as Missing027,
CAST([Missing028] as varchar) as Missing028,
CAST([Missing029] as varchar) as Missing029,
CAST([Missing030] as varchar) as Missing030,
CAST([Missing031] as varchar) as Missing031,
CAST([Missing032] as varchar) as Missing032,
CAST([Missing033] as varchar) as Missing033,
CAST([Missing034] as varchar) as Missing034,
CAST([Missing035] as varchar) as Missing035,
CAST([Missing036] as varchar) as Missing036,
CAST([Missing037] as varchar) as Missing037,
CAST([Missing038] as varchar) as Missing038,
CAST([Missing039] as varchar) as Missing039,
CAST([Missing040] as varchar) as Missing040,
CAST([Missing041] as varchar) as Missing041,
CAST([Missing042] as varchar) as Missing042,
CAST([Missing043] as varchar) as Missing043,
CAST([Missing044] as varchar) as Missing044,
CAST([Missing045] as varchar) as Missing045,
CAST([Missing046] as varchar) as Missing046,
CAST([Missing047] as varchar) as Missing047,
CAST([Missing048] as varchar) as Missing048,
CAST([Missing049] as varchar) as Missing049,
CAST([Missing050] as varchar) as Missing050,
CAST([Missing051] as varchar) as Missing051,
CAST([Missing052] as varchar) as Missing052,
CAST([Missing053] as varchar) as Missing053,
CAST([Missing054] as varchar) as Missing054,
CAST([Missing055] as varchar) as Missing055,
CAST([Missing056] as varchar) as Missing056,
CAST([Missing057] as varchar) as Missing057,
CAST([Missing058] as varchar) as Missing058,
CAST([Missing059] as varchar) as Missing059,
CAST([Missing060] as varchar) as Missing060,
CAST([Missing061] as varchar) as Missing061,
CAST([Missing062] as varchar) as Missing062,
CAST([Missing063] as varchar) as Missing063,
CAST([Missing064] as varchar) as Missing064,
CAST([Missing065] as varchar) as Missing065,
CAST([Missing066] as varchar) as Missing066,
CAST([Missing067] as varchar) as Missing067,
CAST([Missing068] as varchar) as Missing068,
CAST([Missing069] as varchar) as Missing069,
CAST([Missing070] as varchar) as Missing070,
CAST([Missing071] as varchar) as Missing071,
CAST([Missing072] as varchar) as Missing072,
CAST([Missing073] as varchar) as Missing073,
CAST([Missing074] as varchar) as Missing074,
CAST([Missing075] as varchar) as Missing075,
CAST([Missing076] as varchar) as Missing076,
CAST([Missing077] as varchar) as Missing077,
CAST([Missing078] as varchar) as Missing078,
CAST([Missing079] as varchar) as Missing079,
CAST([Missing080] as varchar) as Missing080,
CAST([Missing081] as varchar) as Missing081,
CAST([Missing082] as varchar) as Missing082,
CAST([Missing083] as varchar) as Missing083,
CAST([Missing084] as varchar) as Missing084,
CAST([Missing085] as varchar) as Missing085,
CAST([Missing086] as varchar) as Missing086,
CAST([Missing087] as varchar) as Missing087,
CAST([Missing088] as varchar) as Missing088,
CAST([Missing089] as varchar) as Missing089,
CAST([Missing090] as varchar) as Missing090,
CAST([Missing091] as varchar) as Missing091,
CAST([Missing092] as varchar) as Missing092,
CAST([Missing093] as varchar) as Missing093,
CAST([Missing094] as varchar) as Missing094,
CAST([Missing095] as varchar) as Missing095,
CAST([Missing096] as varchar) as Missing096
FROM dbo.staging_mdm
WHERE [Column 13] <> 1) MDM_KWH

UNPIVOT
(KWH FOR USAGE IN ([Usage001],
[Usage002],
[Usage003],
[Usage004],
[Usage005],
[Usage006],
[Usage007],
[Usage008],
[Usage009],
[Usage010],
[Usage011],
[Usage012],
[Usage013],
[Usage014],
[Usage015],
[Usage016],
[Usage017],
[Usage018],
[Usage019],
[Usage020],
[Usage021],
[Usage022],
[Usage023],
[Usage024],
[Usage025],
[Usage026],
[Usage027],
[Usage028],
[Usage029],
[Usage030],
[Usage031],
[Usage032],
[Usage033],
[Usage034],
[Usage035],
[Usage036],
[Usage037],
[Usage038],
[Usage039],
[Usage040],
[Usage041],
[Usage042],
[Usage043],
[Usage044],
[Usage045],
[Usage046],
[Usage047],
[Usage048],
[Usage049],
[Usage050],
[Usage051],
[Usage052],
[Usage053],
[Usage054],
[Usage055],
[Usage056],
[Usage057],
[Usage058],
[Usage059],
[Usage060],
[Usage061],
[Usage062],
[Usage063],
[Usage064],
[Usage065],
[Usage066],
[Usage067],
[Usage068],
[Usage069],
[Usage070],
[Usage071],
[Usage072],
[Usage073],
[Usage074],
[Usage075],
[Usage076],
[Usage077],
[Usage078],
[Usage079],
[Usage080],
[Usage081],
[Usage082],
[Usage083],
[Usage084],
[Usage085],
[Usage086],
[Usage087],
[Usage088],
[Usage089],
[Usage090],
[Usage091],
[Usage092],
[Usage093],
[Usage094],
[Usage095],
[Usage096])
) AS UNPIV_KWH

UNPIVOT
([TIME] FOR INTERVAL IN ([Interval001],
[Interval002],
[Interval003],
[Interval004],
[Interval005],
[Interval006],
[Interval007],
[Interval008],
[Interval009],
[Interval010],
[Interval011],
[Interval012],
[Interval013],
[Interval014],
[Interval015],
[Interval016],
[Interval017],
[Interval018],
[Interval019],
[Interval020],
[Interval021],
[Interval022],
[Interval023],
[Interval024],
[Interval025],
[Interval026],
[Interval027],
[Interval028],
[Interval029],
[Interval030],
[Interval031],
[Interval032],
[Interval033],
[Interval034],
[Interval035],
[Interval036],
[Interval037],
[Interval038],
[Interval039],
[Interval040],
[Interval041],
[Interval042],
[Interval043],
[Interval044],
[Interval045],
[Interval046],
[Interval047],
[Interval048],
[Interval049],
[Interval050],
[Interval051],
[Interval052],
[Interval053],
[Interval054],
[Interval055],
[Interval056],
[Interval057],
[Interval058],
[Interval059],
[Interval060],
[Interval061],
[Interval062],
[Interval063],
[Interval064],
[Interval065],
[Interval066],
[Interval067],
[Interval068],
[Interval069],
[Interval070],
[Interval071],
[Interval072],
[Interval073],
[Interval074],
[Interval075],
[Interval076],
[Interval077],
[Interval078],
[Interval079],
[Interval080],
[Interval081],
[Interval082],
[Interval083],
[Interval084],
[Interval085],
[Interval086],
[Interval087],
[Interval088],
[Interval089],
[Interval090],
[Interval091],
[Interval092],
[Interval093],
[Interval094],
[Interval095],
[Interval096])
) AS UNPIV_TIME

UNPIVOT
(MISS FOR MISSING IN ([Missing001],
[Missing002],
[Missing003],
[Missing004],
[Missing005],
[Missing006],
[Missing007],
[Missing008],
[Missing009],
[Missing010],
[Missing011],
[Missing012],
[Missing013],
[Missing014],
[Missing015],
[Missing016],
[Missing017],
[Missing018],
[Missing019],
[Missing020],
[Missing021],
[Missing022],
[Missing023],
[Missing024],
[Missing025],
[Missing026],
[Missing027],
[Missing028],
[Missing029],
[Missing030],
[Missing031],
[Missing032],
[Missing033],
[Missing034],
[Missing035],
[Missing036],
[Missing037],
[Missing038],
[Missing039],
[Missing040],
[Missing041],
[Missing042],
[Missing043],
[Missing044],
[Missing045],
[Missing046],
[Missing047],
[Missing048],
[Missing049],
[Missing050],
[Missing051],
[Missing052],
[Missing053],
[Missing054],
[Missing055],
[Missing056],
[Missing057],
[Missing058],
[Missing059],
[Missing060],
[Missing061],
[Missing062],
[Missing063],
[Missing064],
[Missing065],
[Missing066],
[Missing067],
[Missing068],
[Missing069],
[Missing070],
[Missing071],
[Missing072],
[Missing073],
[Missing074],
[Missing075],
[Missing076],
[Missing077],
[Missing078],
[Missing079],
[Missing080],
[Missing081],
[Missing082],
[Missing083],
[Missing084],
[Missing085],
[Missing086],
[Missing087],
[Missing088],
[Missing089],
[Missing090],
[Missing091],
[Missing092],
[Missing093],
[Missing094],
[Missing095],
[Missing096])
) AS UNPIV_MISS

WHERE (RIGHT(USAGE,3) = RIGHT(INTERVAL,3)) AND (RIGHT(USAGE,3) = RIGHT(MISSING,3))
) AS x
WHERE x.[Interval_Time] != '0:0';
