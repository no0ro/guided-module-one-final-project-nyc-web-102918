class Song < ActiveRecord::Base
  has_many :songPlaylists
  has_many :playlists, through: :song_playlists
