require_relative '../classes/genre'
require_relative '../classes/music_album'

describe Genre do
  context 'It should create a Genre instance with name' do
    genre = Genre.new('Way to the moon')
    music_album = MusicAlbum.new('Rockers', true, '2022-3-14')
    it 'creates new Genre with the given parameters' do
      expect(genre).to be_an_instance_of Genre
    end
    it 'Should check the Genre name' do
      expect(genre.name).to eq 'Way to the moon'
    end

    it 'should add music_album item object to genre items array' do
      genre.add_item(music_album)
      expect(genre.items[0]).to eq music_album
    end
  end
end
