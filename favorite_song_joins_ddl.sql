--inner join

select * 
from artist
inner JOIN favorite_song
on favorite_song.artist_id = artist.artist_id

select * 
from favorite_song
inner JOIN artist
on favorite_song.artist_id = artist.artist_id

select song_name, album, artist_name
from artist
inner join favorite_song
on favorite_song.artist_id = artist.artist_id
where artist.artist_id = 2

select song_name, album
from favorite_song
where artist_id

select song_name, album, artist_name
from artist
left join favorite_song
on favorite_song.artist_id = artist.artist_id

--reversed
select song_name, album, artist_name
from artist
left join favorite_song
on favorite_song.artist_id = artist.artist_id

select *
from artist
full join favorite_song
on favorite_song.artist_id = artist.artist_id

select song_name, album, artist_name, artist_id
from artist
full join favorite_song
on favorite_song.artist_id = artist.artist_id --we have to specify where getting info from. 

select favorite_song.song_name, favorite_song.album, artist_name, favorite_song.artist_id
from artist
full join favorite_song
on favorite_song.artist_id = artist.artist_id

select somg_name, album, artist_name, fs.artist_id
from artist as a
full join favorite_song as fs -- can use this short cutt so you don;t have to keep writing 'favorites'
on favorite_song.artist_id = artist.artist_id

select somg_name, album, artist_name
from artist as a
full join favorite_song as fs
on favorite_song.artist_id = artist.artist_id
where album like 'V%'
ORDER BY song_name desc