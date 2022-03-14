require './classes/item'

class Book < Item

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  private 

  def can_be_archived?
    if super || cover_state == "bad"
      return true
    else false
    end
  end

end