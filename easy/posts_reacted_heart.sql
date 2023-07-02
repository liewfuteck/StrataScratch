select distinct(p.*)
from facebook_posts p
left join facebook_reactions r
on p.post_id = r.post_id
where r.reaction = 'heart';