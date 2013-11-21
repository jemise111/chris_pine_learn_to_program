# Builds playlist by creating a .m3u file. This is a modified version 
# of what's asked in the book

#replace username with your username 

Dir.chdir '/Users/<username>/desktop/music'
spoon_playlist = Dir['/Users/<username>/Music/iTunes/iTunes Music/Spoon/A Series Of Sneaks/*.mp3']

playlist_array = []
spoon_playlist.each do |track|
	playlist_array.push(track)
end

spoon_shuffle_playlist = spoon_playlist.shuffle

File.open 'shuffled_spoon.m3u', 'w' do |f|
	for i in 0..spoon_shuffle_playlist.length
		f.puts(spoon_shuffle_playlist[i])
	end
end

