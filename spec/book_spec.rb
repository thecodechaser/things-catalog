require 'date'
require './classes/book'

describe Book do
  context 'What testing the Book class' do
    book = Book.new('The Universe', 'publisher', 'bad', Date.parse('2022/3/14'))

    it 'should validate the book title' do
      expect(book.title).to eq 'The Universe'
    end

    it 'should validate the book publisher' do
      expect(book.publisher).to eq 'publisher'
    end

    it 'should validate the book cover state' do
      expect(book.cover_state).to eq 'bad'
    end

    it 'should validate the book publish date' do
      expect(book.publish_date).to eq Date.parse('2022/3/14')
    end
  end
end
