require_relative '../classes/author'
require_relative '../classes/game'

require 'yaml'

describe Author do
  before :each do
    @author = Author.new('Luis', 'Armstrong')
    @game = Game.new('multiplayer', '1904-2-23', '2022-3-15')
  end

  it '@author should be an instance of Author class' do
    expect(@author).to be_an_instance_of Author
  end

  it 'author first name to be "Luis"' do
    @first_name == 'Luis'
  end

  it 'author last name to be "Armstrong"' do
    @last_name == 'Armstrong'
  end

  it 'should add game item object to author items array' do
    @author.add_item(@game)
    expect(@author.items[0]).to eq @game
  end
end
