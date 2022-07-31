from sqlalchemy import create_engine


# This method is only for connecting to a database
def connection():
    try:
        username = "root"
        password = "6Borkovac6?"
        port = 3306
        database = "noaa"
        engine = create_engine('mysql+mysqldb://%s:%s@localhost:%i/%s' % (username, password, port, database))
        print('database engine created')
        return engine
    except TypeError as e:
        print('No engine created successfully', e)


# This method is for closing the activated database
def close_final_connection(db_instance):
    try:
        db_instance.dispose()
        print('database connection completely disposed')
    except TypeError as e:
        print('Connection not fully disposed.')
