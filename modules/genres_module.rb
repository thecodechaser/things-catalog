require 'json'
require_relative '../classes/genre'

module GenreModule
  def load_genres
    data = []
    file = './data/genres.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |genre|
        data.push(Genre.new(genre['name']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def create_genre
    data = []
    @music_albums.each do |genre|
      data.push({ id: genre.id, name: genre.name })
    end
    open('./data/genres.json', 'w') { |f| f << JSON.generate(data) }
  end
end
