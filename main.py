import init_close_connection
import pandas as pd


def get_df_by_state_name(db_instance, state_name):
    conn = db_instance.connect()
    result = pd.read_sql_query('SELECT * FROM stormdata WHERE STATE = \'' + state_name + '\' GROUP BY EVENT_ID LIMIT '
                                                                                         '10;', conn)
    conn.close()
    return result


def get_df_by_storm_event(db_instance, storm_name):
    conn = db_instance.connect()
    result = pd.read_sql_query('SELECT * FROM stormdata WHERE EVENT_TYPE = \'' + storm_name + '\' LIMIT 10;', conn)
    conn.close()
    return result


def get_state_fips(db_instance):
    conn = db_instance.connect()
    result = pd.read_sql_query('SELECT DISTINCT STATE, STATE_FIPS from stormdata;', conn, index_col="STATE_FIPS")
    conn.close()
    result = result.sort_values(by="STATE_FIPS", ascending=True).drop(index=0, axis=0)
    return result


def get_all_state_dfs(db_instance, df):
    states = dict()
    # total_val = 0
    # cur_val = 0
    for fips in df.index.values:
        df_name = df.loc[fips]['STATE'] + ' DATA SUMMARY'
        # conn = db_instance.connect()
        # cur_val = pd.read_sql_query('SELECT count(*) FROM stormdata WHERE STATE_FIPS= \'' + str(fips) + '\';', conn)
        # print('ALTER TABLE `noaa`.`' + df_name + '` ADD COLUMN BEGIN_LAT text DEFAULT NULL, ADD COLUMN BEGIN_LON text DEFAULT NULL, ADD COLUMN END_LAT text DEFAULT NULL, ADD COLUMN END_LON text DEFAULT NULL;')
        print(df.loc[fips]['STATE'])
        # print('''UPDATE `{df_name}` as osumdata
        # SET
        #     osumdata.sum_deaths_direct = (
        #         SELECT sum(odata.DEATHS_DIRECT)
        #         FROM `{datSum}` as odata
        #         WHERE odata.EVENT_ID = osumdata.EVENT_ID
        #         GROUP BY EVENT_ID
        #     ),
        #     osumdata.sum_deaths_indirect = (
        #         SELECT sum(odata.DEATHS_INDIRECT)
        #         FROM `{datSum}` as odata
        #         WHERE odata.EVENT_ID = osumdata.EVENT_ID
        #         GROUP BY EVENT_ID
        #     )
        # WHERE
        #     osumdata.EVENT_ID in (
        #         SELECT odata.EVENT_ID
        #         FROM `{datSum}` as odata
        #         WHERE odata.EVENT_ID = osumdata.EVENT_ID
        # );'''.format(df_name=df_name, datSum=df.loc[fips]['STATE'] + ' DATA'))
        # conn.close()
        # total_val += cur_val.loc[0]['count(*)']
        # cur_val = 0
    # return total_val


# Main method used to run our code
if __name__ == "__main__":
    database_instance = init_close_connection.connection()
    states_fips = get_state_fips(database_instance)
    get_all_state_dfs(database_instance, states_fips)
    # print(all_states)
    init_close_connection.close_final_connection(database_instance)
