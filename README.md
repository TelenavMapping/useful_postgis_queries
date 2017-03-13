# Useful PostGIS scripts

This Github repository was created so we can share our most useful scripts with other OSM contributors worldwide. These are useful scripts that we use in order to find errors in the map or to simply make statistics. 

First, let's see how we import data into a PostgreSQL database.

##Importing OSM data into the database

- Requirements: 

Linux, Postgresql, Postgis, Osmosis, Qgis

- Step 1

Using a terminal, download into a folder the scope.sh file.
After you download, set the file to be executable by using 
```chmod +x scope.sh```

- Step 2

Go to http://download.geofabrik.de/, https://mapzen.com/data/metro-extracts/ or another website and download the osm.pbf file that you are interested in. Put it in the same folder where the scope.sh file is. 

You can do this directly from the terminal:
```wget http://download.geofabrik.de/europe/malta-latest.osm.pbf```

- Step 3

Run the scope.sh file from the terminal and follow the instructions. 



