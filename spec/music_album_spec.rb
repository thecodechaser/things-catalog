require_relative '../classes/music_album'

describe MusicAlbum do
  context 'It should create a musicAlbum instance with onspotify, name and published date' do
    music = MusicAlbum.new(true, 'Hello', '2000-05-01')
    it 'creates new musicAlbum with the given parameters' do
      expect(music).to be_an_instance_of MusicAlbum
    end
    it 'should check if it can be archived' do
      expect(music.can_be_archived?).to eq 'Hello'
    end
    it 'Should check the musicAlbum name' do
      expect(music.name).to eq true
    end
  end
end
