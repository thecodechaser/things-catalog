require 'date'
require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_date, :publish_date

  def initialize(multiplayer, last_played_date, publish_date)
    super(name, publish_date)
    @last_played_date = last_played_date
    @multiplayer = multiplayer
  end

  def can_be_archived?
    current_year = Time.new.year
    publish_year = Date.strptime(@publish_date, '%Y-%m-%d').strftime('%Y').to_i
    current_year - publish_year >= 10
  end
end