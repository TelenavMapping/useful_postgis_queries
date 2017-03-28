# Useful PostGIS scripts

This repository was created so we can share our most useful queries with other OSM contributors worldwide. These are some of the queries we use in order to find errors in the map or to simply make statistics.

First we need the data! Let's see how we import data into a PostgreSQL database.

## Importing OSM data using Osmosis (Windows version)

- Requirements: Windows, [Postgresql](https://www.postgresql.org/download/), [PostGIS](http://postgis.net/install/), [Osmosis](http://wiki.openstreetmap.org/wiki/Osmosis/Installation)

### Step 1

Using command prompt (cmd), download into a folder the **_scope.bat_**, **_pgsnapshot_schema_0.6.sql_** and **_pgsnapshot_schema_0.6_linestring.sql_** files.

### Step 2

Go to http://download.geofabrik.de/, https://mapzen.com/data/metro-extracts/ or another website and download the osm.pbf file that you are interested in. Put it in the same folder where the scope.bat file is. 

### 

When you installed PostgreSQL, you were prompted to create a username and password for the local server. Keep them in mind, as you will use them later on. Also, make sure your user has all priviledges as shown here:
![import3](https://cloud.githubusercontent.com/assets/24428741/24399981/6a082406-13b7-11e7-902e-3be71fc7fff3.JPG)

### Step 3
Run the scope.bat script from the command line and follow the instructions.
The script asks for your PostgreSQL user account, password and database name. Then it creates the database with the pgsnapshot default schema. 

![import1](https://cloud.githubusercontent.com/assets/24428741/24399479/90399a3a-13b5-11e7-91db-9ce8358a79cc.JPG)
(don't worry about the notice from psql -> missing tables are not an error; the notice appears because osm2pgsql tries to drop old tables first, but because you are doing the import for the first time there is nothing to drop)

Then, you will be asked to enter the **name of the osm.pbf file without the extension**. Make sure you have it in the same folder where the script is.
![import2](https://cloud.githubusercontent.com/assets/24428741/24399486/99238bb0-13b5-11e7-839a-1527dca91864.JPG)
