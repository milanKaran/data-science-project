-- Run two lines of code first before trying to import local data from .csv file
SHOW GLOBAL variables like 'local_infile';
set global local_infile = ON;


Load data local infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\2011-2021.csv'
into table noaa.`stormdata`
fields terminated by ',' 
lines terminated by '\n'
ignore 1 rows;