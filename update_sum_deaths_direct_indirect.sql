UPDATE `OHIO DATA SUMMARY` as osumdata
        SET
        osumdata.sum_deaths_direct = (
            SELECT sum(odata.DEATHS_DIRECT)
            FROM `OHIO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            GROUP BY EVENT_ID
        ),
        osumdata.sum_deaths_indirect = (
            SELECT sum(odata.DEATHS_INDIRECT)
            FROM `OHIO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
            GROUP BY EVENT_ID
        )
WHERE
		osumdata.EVENT_ID in (
            SELECT odata.EVENT_ID
            FROM `OHIO DATA` as odata
            WHERE odata.EVENT_ID = osumdata.EVENT_ID
        );