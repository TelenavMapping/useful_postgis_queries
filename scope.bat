@echo off
Echo This script assumes that you already have installed Osmosis, PostgreSQL, Postgis and downloaded a osm.pbf file. If this is the first time you are using the script, press CTRL+Z and do the required steps.
Echo To download an osm.pbf file, go to http://download.geofabrik.de/, https://mapzen.com/data/metro-extracts/ or other similar OSM data provider.

Echo Welcome to SCOPE - (databaSe Creator Osmosis Postgis loadEr)
set /P user=Enter the name of the PostgreSQL user account: 
Echo The PostgreSQL user is %user%

set /P pass= Enter password for user " %user% " : 
set PGPASSWORD=%pass%

set /P database=Please enter the name of the database you want to create (example: Canada-03/13/2017): 
Echo the database name is %database%

createdb -U %user% %database%
psql -U %user% -d %database% -c "CREATE EXTENSION hstore;"
psql -U %user% -d %database% -c "CREATE EXTENSION postgis;"

psql -U %user% -d %database% -f pgsnapshot_schema_0.6.sql
psql -U %user% -d %database% -f pgsnapshot_schema_0.6_linestring.sql

Echo Part 2 - Ready for some osmosis fun importing the osm file ? Press CTRL+Z to cancel

set /P osmfile=Enter the name of the file, without the extension (example: romania-latest.osm.pbf will be romania-latest): 

osmosis -v --rbf %osmfile%.osm.pbf --wp host=localhost database=%database% user=%user% password=%pass%

echo \vThis \vscript \vis \vdone \v \vMap Analyst Team \vTelenav

echo Find Postgis Scripts and snippents of code that you can use here https://github.com/TelenavMapping