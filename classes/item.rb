class Item
  attr_reader :genre, :author, :lable
  attr_accessor :publish_date

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    @genre.add_item(self) unless @genre.items.include?(self)
  end

  def author=(author)
    @author = author
    @author.add_item(self) unless @author.items.include?(self)
  end

  def label=(label)
    @label = label
    @label.add_item(self) unless @label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Time.new.year
    current_year - @publish_date[:year] > 10
  end
end
