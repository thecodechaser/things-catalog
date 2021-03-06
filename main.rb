require_relative './modules/games_module'
require_relative './modules/authors_module'
require_relative './modules/book_module'
require_relative './modules/label_module'
require_relative './modules/music_album_module'
require_relative './modules/genres_module'
require_relative './app'

class Main
  include GamesModule
  include AuthorsModule
  include BookModule
  include LabelModule
  include MusicAlbumModule
  include GenreModule

  def initialize
    @authors = load_authors
    @games = load_games
    @books = load_book
    @labels = load_label
    @music_albums = load_music_albums
    @load_genres = load_genres
  end

  def save_data
    create_games
    create_book
    create_music_album
  end

  INPUT_MESSAGE = 'Please select an option by number'.freeze
  def print_options
    puts "  1 - List all books
  2 - List all music albums
  3 - List of games
  4 - List all genres
  5 - List all labels
  6 - List all authors
  7 - Add a book
  8 - Add a music album
  9 - Add a game
  10 - Exit"
    puts INPUT_MESSAGE
    option = gets.chomp.to_i
    handle_input(option)
    print_options
  end

  # rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
  def handle_input(option)
    case option
    when 1
      list_all_books
    when 2
      list_all_music_album
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_all_labels
    when 6
      list_all_authors
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    when 10
      save_data
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
