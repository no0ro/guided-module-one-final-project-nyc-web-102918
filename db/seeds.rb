# require 'faker'
# s1 = Song.new(name: "blah")
# s1.save
#same as

# s1 = Song.create(name: 'a')
# s1 = Song.create(name: 'b')
# s1 = Song.create(name: 'c')
# s1 = Song.create(name: 'd')
# s1 = Song.create(name: 'e')
# s1 = Song.create(name: 'f')
# s1 = Song.create(name: 'g')
# s1 = Song.create(name: 'g')
# s1 = Song.create(name: 'g1')
# s1 = Song.create(name: 'r4')
# s1 = Song.create(name: 'bg')


10.times do
  Song.create(name: Faker::Name.name)
end

10.times do
  Playlist.create(name: Faker::Name.name)
end

10.times do
  SongPlaylist.create(song_id: Song.all.sample.id, playlist_id: Playlist.all.sample.id)
end
