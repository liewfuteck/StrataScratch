select r.artist, count(r.artist) as cnt
from spotify_worldwide_daily_song_ranking r
group by r.artist
order by cnt desc;