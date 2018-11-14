class Playlist < ActiveRecord::Base
  has_many :songPlaylists
  has_many :songs, through: :song_playlists
