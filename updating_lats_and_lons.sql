UPDATE `OHIO DATA SUMMARY` as osumdata
SET
osumdata.BEGIN_LAT = (
	SELECT odata.BEGIN_LAT
	FROM `OHIO DATA` as odata
	WHERE odata.EPISODE_ID = (
		SELECT m.min_ep_id
		FROM (
			SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
			FROM `ohio data` as odata
			GROUP BY odata.EVENT_ID
			) AS m
		WHERE m.EVENT_ID = osumdata.EVENT_ID    
	)
),
osumdata.BEGIN_LON = (
	SELECT odata.BEGIN_LON
	FROM `OHIO DATA` as odata
	WHERE odata.EPISODE_ID = (
		SELECT m.min_ep_id
        FROM (
			SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
            FROM `OHIO DATA` as odata
			GROUP BY odata.EVENT_ID
        ) as m
        WHERE m.EVENT_ID = osumdata.EVENT_ID
    )
),
osumdata.END_LAT = (
	SELECT odata.END_LAT
	FROM `OHIO DATA` as odata
	WHERE odata.EPISODE_ID = (
		SELECT m.max_ep_id
		FROM (
			SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
			FROM `ohio data` as odata
			GROUP BY odata.EVENT_ID
			) AS m
		WHERE m.EVENT_ID = osumdata.EVENT_ID
	)
),
osumdata.END_LON = (
	SELECT odata.END_LON
	FROM `OHIO DATA` as odata
	WHERE odata.EPISODE_ID = (
		SELECT m.max_ep_id
        FROM (
			SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
            FROM `OHIO DATA` as odata
			GROUP BY odata.EVENT_ID
        ) as m
        WHERE m.EVENT_ID = osumdata.EVENT_ID
    )
)
WHERE 
	 osumdata.EVENT_ID in (
		SELECT odata.EVENT_ID
        FROM `OHIO DATA` as odata
        WHERE odata.EVENT_ID = osumdata.EVENT_ID
);
