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

