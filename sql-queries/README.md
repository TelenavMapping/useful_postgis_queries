## Our scripts
* **Untagged roads** - this script detects possible roads that don't have any tags to describe them, they are usually added in OSM by new users with little experience
![3](https://cloud.githubusercontent.com/assets/16319427/17206298/b571eb30-54b7-11e6-9801-487dab985fe1.PNG)

* **Miscategorized links** - in OSM, we use the higher classification rule, so when a primary road intersects a secodary road, the links is a primary_link; this script detects cases where the link is miscategorized
![link](https://cloud.githubusercontent.com/assets/24428741/24402307/970ba096-13c0-11e7-94d6-3b5b2c71adff.png)

* **Similar name/alt_name** - this script detects streets that have name and alt_name tags really similar, for example name=Johns Road, alt_name=John's Road
![query1](https://cloud.githubusercontent.com/assets/24428741/24402562/cd3727b6-13c1-11e7-9af0-88caa6667ef3.JPG)

* **Unusual number of members** in relations (of type=restriction) - usually, in OSM, restrictions have 3 members; this script detects relations with more or less than 3 members so we can correct them if necessary
![query2](https://cloud.githubusercontent.com/assets/24428741/24402702/5c64bf0c-13c2-11e7-9d1c-2a5443f9860b.JPG)

* **Ramp has name** - in OSM, ramps should not have names, so this script detects the ones that do
![query3](https://cloud.githubusercontent.com/assets/24428741/24402870/1271b9c6-13c3-11e7-9151-6846265973db.JPG)

* **No ref junctions** - motorway junctions without ref (number of the exit)
![query4](https://cloud.githubusercontent.com/assets/24428741/24403183/666fcfd0-13c4-11e7-983d-0fa838f428f2.JPG)

* **Conditional restrictions with old taging schema** - these are the ones using deprecated tags like "day_on", "day_off", "hour_on", "hour_off", etc.
![query5](https://cloud.githubusercontent.com/assets/24428741/24403324/0986f658-13c5-11e7-9de5-10053902db7e.JPG)

* **Possible roundabouts** - this script detects circular geometries in OSM that are most probable roundabouts. Here's what the script detected in North America: https://gavrismanuela1993.carto.com/viz/7ed4f56c-7371-11e6-8983-0e05a8b3e3d7/embed_map
![query6](https://cloud.githubusercontent.com/assets/24428741/24403439/8a74be62-13c5-11e7-9edb-e687a29d491b.JPG)
 ##

* and many more to come :) ...

