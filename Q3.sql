select distinct t.sub_id as post_id, (select  count(distinct sub_id) from submissions s where s.parent_id=t.sub_id) as number_of_comments from submissions t where t.parent_id is null
