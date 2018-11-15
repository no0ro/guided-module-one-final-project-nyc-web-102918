class ApiCommunicator


  @@artist_search = artist_search

  def self.music_search
    music_search_request = RestClient.get("https://itunes.apple.com/search?media=music&entry=song&term=#{@@artist_search}&limit=5")
    music_search_response = JSON.parse(music_search_request)
    binding.pry
  end

  def

end


#write methods for these steps
# 1)
# Welcome to iPod2018
# What do you want to name your playlist?
#   --> 'Beyonce Songs!'
#       --> gets.chomp.downcase
#       --> pass in user responce
#       --> create a new instance in Playlist
#
# 2)
# Great! Which artist would you like to search for?
    # --> gets.chomp.downcase => replace space with +
    #     --> pass into api search as interpolated
    # --> return 5 songs with "trackName", "artistName"

#  song should we add to your "Users Input -Playlist Name- "?
#   --> with this message, a list of songs +  artist will be displayed for user to choose one
#   --> display a random selection of songs (this way we wont have to worry about deleting the chosen song)
#   [1] Single Ladies, Beyonce, Pop
#   [2]
#   [3]
#   [4]
#   [5]
#     -->gets.chomp
#   ---> if user enters number 1-5 do this:
#         -->user enters [2], add string to Playlist instance (songplaylist? table row )
#       else
#         --> puts this is not a valid command
#       #see jukebox cli
#
# 3)
# What would you like to do next?
#   [1] Choose another song?
#   [2] Listen to your playlist?
#   --> gets.chomp
#   --> if [1]
#     --> enact the display_random_selection_of_songs method repeat those steps
#   --> else Puts out a goodbye message and (enact a method with listen_to_playlist commands)
#         --> returns the songPlaylist in a numbered ordered list
#         --> see below
#
# 4)
# Happy listening!
#   U"Playlist Name"
#   [1] Single Ladies, Beyonce
#   [2] Country Grammer, Nelly
#   [3] Lights, Kanye
#   [4] Trap Queen, Fetty Wap
