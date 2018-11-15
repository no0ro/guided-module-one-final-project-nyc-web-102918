#no tables, just place for us to write methods relating to the command_line_interface
#of our app

def greeting
  puts "Welcome to myJams. Please name your playlist "

end

def get_playlist_name
  puts "Please name your playlist"
  name = gets.chomp
  create_playlist(playlist_name)
end


def create_playlist(name)
  Playlist.create(:name => name)
end

def get_search_input
  puts "Which artist should we return songs of? "
  artist = gets.chomp
end

# here we write methods that
#   1) Puts out phrases to user
#   2) get user responce
