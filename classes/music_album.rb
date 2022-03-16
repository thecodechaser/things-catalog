require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name, :publish_date
  attr_reader :items

  def initialize(name, on_spotify, publish_date)
    super(name, publish_date, archived: true)
    @id = rand(1...1000)
    @on_spotify = on_spotify
    @name = name
    @items = []
  end

  def can_be_archived?
    super && @on_spotify
  end
end
