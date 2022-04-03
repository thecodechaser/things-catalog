require 'json'
require_relative '../classes/music_album'

module MusicAlbumModule
  def load_music_albums
    data = []
    file = './data/music_album.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |music|
        data.push(MusicAlbum.new(music['name'], music['publish_date'], music['on_spotify']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def create_music_album
    data = []
    @music_albums.each do |album|
      data.push({ on_spotify: album.on_spotify, name: album.name, publish_date: album.publish_date })
    end
    File.write('./data/music_album.json', JSON.generate(data))
  end
end
