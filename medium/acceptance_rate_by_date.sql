-- find sent
-- find sent and accepted
-- do a join and find the percentage

with sent as (
select *
from fb_friend_requests
where action = 'sent'),

accepted as (
select *
from fb_friend_requests
where action = 'accepted')

select sent.date, count(accepted.user_id_receiver) / cast(count(sent.user_id_sender) as decimal) as percentage_acceptance
from sent
left join accepted
on sent.user_id_sender = accepted.user_id_sender
and sent.user_id_receiver = accepted.user_id_receiver
group by sent.date;