# Useful PostGIS scripts

This Github repository was created so we can share our most useful scripts with other OSM contributors worldwide. These are queries that we use in order to find errors in the map or to simply make statistics.

First we need the data! Let's see how we import data into a PostgreSQL database.

## Importing OSM data into the database

- Requirements: Linux, Postgresql, PostGIS, Osmosis, PgAdmin

### Step 1

Using a terminal, download into a folder the scope.sh file.
After you download, set the file to be executable by using 
```chmod +x scope.sh```

### Step 2

Go to http://download.geofabrik.de/, https://mapzen.com/data/metro-extracts/ or another website and download the osm.pbf file that you are interested in. Put it in the same folder where the scope.sh file is. 

You can do this directly from the terminal using wget command:
```wget http://download.geofabrik.de/europe/malta-latest.osm.pbf```

### Step 3

Run the scope.sh file from the terminal and follow the instructions. 

![scope](https://cloud.githubusercontent.com/assets/24428741/23892688/4e7ee3c8-08a4-11e7-85e2-1cfbe09c8bdf.JPG)

## Our scripts
* **Untagged roads** - this script detects possible roads that don't have any tags to describe them, they are usually added in OSM by new users with little experience
![3](https://cloud.githubusercontent.com/assets/16319427/17206298/b571eb30-54b7-11e6-9801-487dab985fe1.PNG)
* **Miscategorized links** - in OSM, we use the higher classification rule, so when a primary road intersects a secodary road, the links is a primary_link; this script detects cases where the link is miscategorized
* **Similar name/alt_name** - this script detects streets that have name and alt_name tags really similar, for example name=Johns Road, alt_name=John's Road
* **Unusual number of members** in relations (of type=restriction) - usually, in OSM, restrictions have 3 members; this script detects relations with more or less than 3 members so we can correct them if necessary
* **Ramp has name** - in OSM, ramps should not have names, so this script detects the ones that do
* **No ref junctions** - motorway junctions without ref (number of the exit)
* **Conditional restrictions with old taging schema** - these are the ones using deprecated tags like "day_on", "day_off", "hour_on", "hour_off", etc.
* **Possible roundabouts** - this script detects circular geometries in OSM that are most probable roundabouts. Here's what the script detected in North America: https://gavrismanuela1993.carto.com/viz/7ed4f56c-7371-11e6-8983-0e05a8b3e3d7/embed_map
* and many more to come :) ...

