-- create the table with all untagged ways
create table untagged_ways as 
select * from ways WHERE tags = ''; 

-- keep only unclosed ways
delete from untagged_ways
WHERE ST_IsClosed(linestring)='t';

-- delete ways that are part of a relation
delete from untagged_ways
where id in ( 
select id from untagged_ways 
inner join relation_members 
on untagged_ways.id = relation_members.member_id);

-- delete long ways (optional)
delete from untagged_ways 
where ST_Length(ST_Transform(linestring,3857))>5000;

-- keep only ways that intersect highways
delete from untagged_ways 
where id not in 
(SELECT a.id FROM
   untagged_ways as a,
   (select * from ways where
   tags ?'highway'=true) as b
WHERE
    ST_Touches(a.linestring, b.linestring)
    AND a.id != b.id
);