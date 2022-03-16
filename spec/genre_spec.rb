require_relative '../classes/genre'

describe Genre do
  context 'It should create a Genre instance with name' do
    genre = Genre.new('Way to the moon')
    it 'creates new Genre with the given parameters' do
      expect(genre).to be_an_instance_of Genre
    end
    it 'Should check the Genre name' do
      expect(genre.name).to eq 'Way to the moon'
    end
  end
end
