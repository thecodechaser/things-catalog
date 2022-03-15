require_relative '../classes/game'

require 'yaml'

describe Game do
  before :each do
    @game = Game.new 'multiplayer', '2002-01-01', '2002-02-01'
  end

  it 'game should be an instance of game class' do
    expect(@game).to be_an_instance_of Game
  end

  it 'game should be an archived' do
    expect(@game.can_be_archived?).to be true
  end

  it 'last played date is 2002-02-01' do
    expect @last_played_at == '2002-02-01'
  end
end
