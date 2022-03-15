class Author
  attr_reader :first_name, :last_name
  attr_accessor :items

  def initialize(first_name, last_name)
    @id = rand(1..100_000)
    @items = []
    @first_name = first_name.strip
    @last_name = last_name.strip
  end

  def add_item(item)
    @items.push(item)
    item.add_author(self)
  end
end
