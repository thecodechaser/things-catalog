class Item

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    @genre= genre
    @genre.items.push(self) unless @genre.items.include?(self)
  end

  def author=(author)
    @author= author
    @author.items.push(self) unless @author.items.include?(self)
  end

  def label=(label)
    @label= label
    @label.items.push(self) unless @label.items.include?(self)
  end


end