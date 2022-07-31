UPDATE `ALABAMA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ALABAMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ALABAMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ALABAMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ALABAMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ALABAMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ALABAMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ALABAMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ALABAMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ALABAMA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ALABAMA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ALABAMA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ALABAMA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ALASKA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ALASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ALASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ALASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ALASKA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ARIZONA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ARIZONA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ARIZONA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ARIZONA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ARIZONA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ARIZONA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ARIZONA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ARIZONA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ARIZONA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ARIZONA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ARIZONA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ARIZONA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ARIZONA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ARKANSAS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ARKANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ARKANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ARKANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ARKANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ARKANSAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ARKANSAS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `CALIFORNIA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `CALIFORNIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `CALIFORNIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `CALIFORNIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `CALIFORNIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `CALIFORNIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `CALIFORNIA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `COLORADO DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `COLORADO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `COLORADO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `COLORADO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `COLORADO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `COLORADO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `COLORADO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `COLORADO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `COLORADO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `COLORADO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `COLORADO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `COLORADO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `COLORADO DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `CONNECTICUT DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `CONNECTICUT DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `CONNECTICUT DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `CONNECTICUT DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `CONNECTICUT DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `CONNECTICUT DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `CONNECTICUT DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `DELAWARE DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `DELAWARE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `DELAWARE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `DELAWARE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `DELAWARE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `DELAWARE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `DELAWARE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `DELAWARE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `DELAWARE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `DELAWARE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `DELAWARE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `DELAWARE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `DELAWARE DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `DISTRICT OF COLUMBIA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `DISTRICT OF COLUMBIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `DISTRICT OF COLUMBIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `DISTRICT OF COLUMBIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `DISTRICT OF COLUMBIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `DISTRICT OF COLUMBIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `DISTRICT OF COLUMBIA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `FLORIDA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `FLORIDA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `FLORIDA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `FLORIDA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `FLORIDA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `FLORIDA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `FLORIDA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `FLORIDA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `FLORIDA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `FLORIDA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `FLORIDA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `FLORIDA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `FLORIDA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `GEORGIA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `GEORGIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GEORGIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `GEORGIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GEORGIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `GEORGIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GEORGIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `GEORGIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GEORGIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `GEORGIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `GEORGIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `GEORGIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `GEORGIA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `HAWAII DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `HAWAII DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `HAWAII DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `HAWAII DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `HAWAII DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `HAWAII DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `HAWAII DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `HAWAII DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `HAWAII DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `HAWAII DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `HAWAII DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `HAWAII DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `HAWAII DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `IDAHO DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `IDAHO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `IDAHO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `IDAHO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `IDAHO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `IDAHO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `IDAHO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `IDAHO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `IDAHO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `IDAHO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `IDAHO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `IDAHO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `IDAHO DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ILLINOIS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ILLINOIS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ILLINOIS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ILLINOIS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ILLINOIS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ILLINOIS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ILLINOIS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `INDIANA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `INDIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `INDIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `INDIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `INDIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `INDIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `INDIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `INDIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `INDIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `INDIANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `INDIANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `INDIANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `INDIANA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `IOWA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `IOWA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `IOWA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `IOWA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `IOWA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `IOWA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `IOWA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `IOWA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `IOWA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `IOWA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `IOWA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `IOWA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `IOWA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `KANSAS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `KANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `KANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `KANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `KANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `KANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `KANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `KANSAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `KANSAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `KANSAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `KANSAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `KANSAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `KANSAS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `KENTUCKY DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `KENTUCKY DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `KENTUCKY DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `KENTUCKY DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `KENTUCKY DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `KENTUCKY DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `KENTUCKY DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LOUISIANA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LOUISIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LOUISIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LOUISIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LOUISIANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LOUISIANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LOUISIANA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MAINE DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MAINE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MAINE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MAINE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MAINE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MAINE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MAINE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MAINE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MAINE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MAINE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MAINE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MAINE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MAINE DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MARYLAND DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MARYLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MARYLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MARYLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MARYLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MARYLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MARYLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MARYLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MARYLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MARYLAND DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MARYLAND DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MARYLAND DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MARYLAND DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MASSACHUSETTS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MASSACHUSETTS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MASSACHUSETTS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MASSACHUSETTS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MASSACHUSETTS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MASSACHUSETTS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MASSACHUSETTS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MICHIGAN DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MICHIGAN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MICHIGAN DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MINNESOTA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MINNESOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MINNESOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MINNESOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MINNESOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MINNESOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MINNESOTA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MISSISSIPPI DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MISSISSIPPI DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MISSISSIPPI DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MISSISSIPPI DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MISSISSIPPI DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MISSISSIPPI DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MISSISSIPPI DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MISSOURI DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MISSOURI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MISSOURI DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MISSOURI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MISSOURI DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MISSOURI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MISSOURI DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MISSOURI DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MISSOURI DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MISSOURI DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MISSOURI DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MISSOURI DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MISSOURI DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `MONTANA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `MONTANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MONTANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `MONTANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `MONTANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `MONTANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MONTANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `MONTANA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `MONTANA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `MONTANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `MONTANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `MONTANA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `MONTANA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NEBRASKA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEBRASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEBRASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEBRASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEBRASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NEBRASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NEBRASKA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NEVADA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NEVADA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEVADA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NEVADA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEVADA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NEVADA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEVADA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NEVADA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEVADA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NEVADA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NEVADA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NEVADA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NEVADA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NEW HAMPSHIRE DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW HAMPSHIRE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW HAMPSHIRE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW HAMPSHIRE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW HAMPSHIRE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NEW HAMPSHIRE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NEW HAMPSHIRE DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NEW JERSEY DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW JERSEY DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW JERSEY DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW JERSEY DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW JERSEY DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NEW JERSEY DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NEW JERSEY DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NEW MEXICO DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NEW MEXICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NEW MEXICO DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NEW YORK DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NEW YORK DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW YORK DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NEW YORK DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NEW YORK DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NEW YORK DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW YORK DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NEW YORK DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NEW YORK DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NEW YORK DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NEW YORK DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NEW YORK DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NEW YORK DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NORTH CAROLINA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NORTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NORTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NORTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NORTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NORTH CAROLINA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NORTH CAROLINA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `NORTH DAKOTA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NORTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `NORTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NORTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `NORTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `NORTH DAKOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `NORTH DAKOTA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `OKLAHOMA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `OKLAHOMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `OKLAHOMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `OKLAHOMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `OKLAHOMA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `OKLAHOMA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `OKLAHOMA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `OREGON DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `OREGON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `OREGON DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `OREGON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `OREGON DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `OREGON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `OREGON DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `OREGON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `OREGON DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `OREGON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `OREGON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `OREGON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `OREGON DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `PENNSYLVANIA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `PENNSYLVANIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `PENNSYLVANIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `PENNSYLVANIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `PENNSYLVANIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `PENNSYLVANIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `PENNSYLVANIA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `RHODE ISLAND DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `RHODE ISLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `RHODE ISLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `RHODE ISLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `RHODE ISLAND DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `RHODE ISLAND DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `RHODE ISLAND DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `SOUTH CAROLINA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `SOUTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `SOUTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `SOUTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `SOUTH CAROLINA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `SOUTH CAROLINA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `SOUTH CAROLINA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `SOUTH DAKOTA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `SOUTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `SOUTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `SOUTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `SOUTH DAKOTA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `SOUTH DAKOTA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `SOUTH DAKOTA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `TENNESSEE DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `TENNESSEE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `TENNESSEE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `TENNESSEE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `TENNESSEE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `TENNESSEE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `TENNESSEE DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `TEXAS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `TEXAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `TEXAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `TEXAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `TEXAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `TEXAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `TEXAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `TEXAS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `TEXAS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `TEXAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `TEXAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `TEXAS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `TEXAS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `UTAH DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `UTAH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `UTAH DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `UTAH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `UTAH DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `UTAH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `UTAH DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `UTAH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `UTAH DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `UTAH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `UTAH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `UTAH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `UTAH DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `VERMONT DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `VERMONT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `VERMONT DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `VERMONT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `VERMONT DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `VERMONT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `VERMONT DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `VERMONT DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `VERMONT DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `VERMONT DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `VERMONT DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `VERMONT DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `VERMONT DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `VIRGINIA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `VIRGINIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `VIRGINIA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `WASHINGTON DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WASHINGTON DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WASHINGTON DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WASHINGTON DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WASHINGTON DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `WASHINGTON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `WASHINGTON DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `WEST VIRGINIA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WEST VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WEST VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WEST VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WEST VIRGINIA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `WEST VIRGINIA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `WEST VIRGINIA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `WISCONSIN DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WISCONSIN DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WISCONSIN DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WISCONSIN DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WISCONSIN DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `WISCONSIN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `WISCONSIN DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `WYOMING DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `WYOMING DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WYOMING DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `WYOMING DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `WYOMING DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `WYOMING DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WYOMING DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `WYOMING DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `WYOMING DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `WYOMING DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `WYOMING DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `WYOMING DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `WYOMING DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LAKE ST CLAIR DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE ST CLAIR DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE ST CLAIR DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE ST CLAIR DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE ST CLAIR DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LAKE ST CLAIR DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LAKE ST CLAIR DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `HAWAII WATERS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `HAWAII WATERS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `HAWAII WATERS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `HAWAII WATERS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `HAWAII WATERS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `HAWAII WATERS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `HAWAII WATERS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `GULF OF MEXICO DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GULF OF MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GULF OF MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GULF OF MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GULF OF MEXICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `GULF OF MEXICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `GULF OF MEXICO DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `E PACIFIC DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `E PACIFIC DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `E PACIFIC DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `E PACIFIC DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `E PACIFIC DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `E PACIFIC DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `E PACIFIC DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ATLANTIC SOUTH DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ATLANTIC SOUTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ATLANTIC SOUTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ATLANTIC SOUTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ATLANTIC SOUTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ATLANTIC SOUTH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ATLANTIC SOUTH DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ATLANTIC NORTH DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ATLANTIC NORTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ATLANTIC NORTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ATLANTIC NORTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ATLANTIC NORTH DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ATLANTIC NORTH DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ATLANTIC NORTH DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `GULF OF ALASKA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GULF OF ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GULF OF ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GULF OF ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GULF OF ALASKA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `GULF OF ALASKA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `GULF OF ALASKA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LAKE HURON DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE HURON DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE HURON DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE HURON DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE HURON DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LAKE HURON DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LAKE HURON DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LAKE MICHIGAN DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE MICHIGAN DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LAKE MICHIGAN DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LAKE MICHIGAN DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LAKE SUPERIOR DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE SUPERIOR DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE SUPERIOR DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE SUPERIOR DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE SUPERIOR DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LAKE SUPERIOR DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LAKE SUPERIOR DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `ST LAWRENCE R DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ST LAWRENCE R DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `ST LAWRENCE R DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ST LAWRENCE R DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `ST LAWRENCE R DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `ST LAWRENCE R DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `ST LAWRENCE R DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LAKE ONTARIO DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE ONTARIO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE ONTARIO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE ONTARIO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE ONTARIO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LAKE ONTARIO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LAKE ONTARIO DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `LAKE ERIE DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE ERIE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `LAKE ERIE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE ERIE DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `LAKE ERIE DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `LAKE ERIE DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `LAKE ERIE DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `VIRGIN ISLANDS DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `VIRGIN ISLANDS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `VIRGIN ISLANDS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `VIRGIN ISLANDS DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `VIRGIN ISLANDS DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `VIRGIN ISLANDS DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `VIRGIN ISLANDS DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `AMERICAN SAMOA DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `AMERICAN SAMOA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `AMERICAN SAMOA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `AMERICAN SAMOA DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `AMERICAN SAMOA DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `AMERICAN SAMOA DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `AMERICAN SAMOA DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `GUAM DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `GUAM DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GUAM DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `GUAM DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `GUAM DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `GUAM DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GUAM DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `GUAM DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `GUAM DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `GUAM DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `GUAM DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `GUAM DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `GUAM DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );
UPDATE `PUERTO RICO DATA SUMMARY` as osumdata
        SET
        osumdata.BEGIN_LAT = (
            SELECT odata.BEGIN_LAT
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `PUERTO RICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID    
            )
        ),
        osumdata.BEGIN_LON = (
            SELECT odata.BEGIN_LON
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.min_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MIN(odata.EPISODE_ID) as min_ep_id
                    FROM `PUERTO RICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LAT = (
            SELECT odata.END_LAT
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `PUERTO RICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                    ) AS m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.END_LON = (
            SELECT odata.END_LON
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EPISODE_ID = (
                SELECT m.max_ep_id
                FROM (
                    SELECT odata.EVENT_ID, MAX(odata.EPISODE_ID) as max_ep_id
                    FROM `PUERTO RICO DATA` as odata
                    GROUP BY odata.EVENT_ID
                ) as m
                WHERE m.EVENT_ID = osumdata.EVENT_ID
            )
        ),
        osumdata.BEGIN_YEARMONTH = (
            SELECT min(odata.BEGIN_YEARMONTH)
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.END_YEARMONTH = (
            SELECT odata.END_YEARMONTH
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        ),
        osumdata.EVENT_TYPE = (
            SELECT odata.EVENT_TYPE
            FROM `PUERTO RICO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            LIMIT 1
        )
        WHERE 
             osumdata.EVENT_ID in (
                SELECT odata.EVENT_ID
                FROM `PUERTO RICO DATA` as odata
                WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );