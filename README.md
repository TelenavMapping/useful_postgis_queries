# Useful PostGIS scripts

This Github repository was created so we can share our most useful scripts with other OSM contributors worldwide. These are useful scripts that we use in order to find errors in the map or to simply make statistics. 

- Requirements: 

Linux, Postgresql 9.x, Postgis 2.x, Osmosis 0.43+ , Qgis 2.12.2+

Installation :  Simple version - look at this video https://www.youtube.com/watch?v=vhJQbKey9EI

- Step 1

Using a terminal, download into a folder the scope.sh file.
After you download, set the file to be executable by using 
chmod +x scope.sh

- Step 2

Go to http://download.geofabrik.de/ or another website and download in the same folder where the scope.sh file is, the osm.pbf file that you are interested. 
For example, from the terminal, I can give :
wget http://download.geofabrik.de/europe/malta-latest.osm.pbf

- Step 2

Run the scope.sh file from the terminal and follow the instructions. 

