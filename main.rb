require 'json'
require_relative './classes/item'
require_relative './classes/game'
require_relative './classes/author'
require_relative './modules/games_module'
require_relative './modules/authors_module'

class Main
  include GamesModule
  include AuthorsModule

  def initialize
    @authors = load_authors
    @games = load_games
  end

  INPUT_MESSAGE = 'Please select an option by number'.freeze
  def print_options
    puts "1. List all books
  2. List all music albums
  3. List of games
  4. List all genres
  5. List all labels
  6. List all authors
  7. Add a book
  8. Add a music album
  9. Add a game
  10. Exit"
    puts INPUT_MESSAGE
    option = gets.chomp.to_i
    handle_input(option)
    print_options
  end

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
    puts 'Authors:'
    @authors.each do |author|
      puts "First Name: #{author.first_name} "
      puts "Last Name: #{author.last_name} "
    end
  end

  def list_authors
    puts 'There are no authors yet!' if @authors.empty?
    @authors.each do |author|
      puts "first name: #{author.first_name}, last name: #{author.last_name}}"
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
  def handle_input(option)
    case option
    when 1
      list_books
    when 2
      list_all_music_album
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_labels
    when 6
      list_all_authors
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    when 10
      create_games
      puts 'Thank you for using things-catalog'
      exit
    else
      puts 'Invalid option! Please try again.'
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity, Metrics/MethodLength

  def main
    puts 'Welcome to out things-catalog app!'
    print_options
  end
end

catalog = Main.new

catalog.main
