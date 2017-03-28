-- create table with number of members each restriction has

create table unusual_restrictions as ( 
select count(*) members, relation_id 
from relation_members 
where relation_id in ( 
select id from relations 
where tags->'type'='restriction') 
group by relation_id 
order by members DESC);


-- keep only restrictions that have less or more than 3 members

delete from unusual_restrictions where members=3;
