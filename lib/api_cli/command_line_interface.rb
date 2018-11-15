#no tables, just place for us to write methods relating to the command_line_interface
#of our app

#1
def greeting
  puts "Welcome to myJams. Please name your playlist "

end


def get_playlist_name #playlist_name
  puts "Please name your playlist"
  name = gets.chomp
end


def create_playlist(name) #new_playlist
  Playlist.create(:name => name)
end

def get_search_input #artist_search
  puts "Which artist should we return songs of? "
  artist = gets.chomp
end

def run
  greeting #1
  playlist_name = get_playlist_name
  new_playlist = create_playlist(playlist_name)
  artist_search = get_search_input
end

# here we write methods that
#   1) Puts out phrases to user
#   2) get user responce
