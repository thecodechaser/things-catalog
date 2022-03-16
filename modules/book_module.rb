require 'json'
require_relative '../classes/book'

module BookModule
  def load_book
    data = []
    file = './data/book.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['title'], book['publisher'], book['cover_state'], book['publish_date']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def create_book
    data = []
    @books.each do |book|
      data.push({ title: book.title, publisher: book.publisher, publish_date: book.publish_date,
                  cover_state: book.cover_state })
    end
    open('./data/book.json', 'w') { |f| f << JSON.generate(data) }
  end
end
