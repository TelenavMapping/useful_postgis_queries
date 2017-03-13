create table restrictions as ( 
select count(*) members, relation_id 
from relation_members 
where relation_id in ( 
select id from relations 
where tags->'type'='restriction') 
group by relation_id 
order by mem DESC);
delete from restrictions where members=3;
