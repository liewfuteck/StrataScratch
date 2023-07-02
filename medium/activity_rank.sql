select from_user, 
        count(from_user) as cnt_emails_sent,
        row_number() over (order by count(from_user) desc, from_user) as row_num
from google_gmail_emails
group by from_user;