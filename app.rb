require_relative './classes/item'
require_relative './classes/game'
require_relative './classes/author'
require_relative './classes/book'

def list_all_games
  puts 'Games:'
  @games.each do |games|
    puts "Multiplayer: #{games.multiplayer}, Publish Date: #{games.publish_date},
    Last played date: #{games.last_played_date}"
  end
end

def add_game
  puts 'Please write multiplayer: '
  multiplayer = gets.chomp

  puts 'Please write date of publish [Enter date in format (yyyy-mm-dd)]'
  publish_date = gets.chomp

  puts 'Please write last played date [Enter date in format (yyyy-mm-dd)]'
  last_played_date = gets.chomp

  @games.push(Game.new(multiplayer, publish_date, last_played_date))
  puts 'Game is created'
end

def list_all_authors
  puts 'There are no authors yet!' if @authors.empty?
  @authors.each do |author|
    puts "first name: #{author.first_name}, last name: #{author.last_name}"
  end
end

def list_all_books
  puts 'There are no books yet!' if @books.empty?
  @books.each do |book|
    puts "Publisher: #{book.publisher}, Publish Date: #{book.publish_date},
    Cover state: #{book.cover_state}"
  end
end

def add_book
  print 'Please write publisher: '
  publisher = gets.chomp

  puts 'Please write date of publish [Enter date in format (yyyy-mm-dd)]'
  publish_date = gets.chomp

  puts 'Please write cover state ["good"/"bad"]'
  cover_state = gets.chomp

  @books.push(Book.new(publisher, cover_state, publish_date))
  puts 'Book is created'
end

def list_all_labels
  puts 'There are no labels yet!' if @labels.empty?
  @labels.each do |label|
    puts "Title: #{label.title}, Color: #{label.color}"
  end
end