-- select restrictions that follow the old conditional schema (day_on, day_off, etc)

create table old_tags_TR as ((
select id, tags from relations 
where tags->'type'='restriction' 
and (tags ?'day_on'
or tags ?'day_off'
or tags ?'opening_hours'
or tags ?'hour_off'
or tags ?'hour_on'))

union

(select id, tags 
from relations 
where tags->'type'='restriction' 
and tags ?'restriction' 
and tags ?'restriction:conditional'));