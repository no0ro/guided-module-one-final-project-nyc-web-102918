class CreateSongPlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :song_playlists do |t|
      t. :song
      t. :playlist
    end
  end
end
