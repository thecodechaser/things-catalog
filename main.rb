class Main
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

  def handle_input(option)
    # case option
    # when 1

    # when 2

    # when 3

    # when 4

    # when 5

    # when 6

    # when 7

    # when 8

    # when 9

    # when 10
    #   puts 'Thank you for using things-catalog'
    #   exit
    # else
    #   puts 'Invalid option! Please try again.'
    # end
  end

  def main
    puts 'Welcome to out things-catalog app!'
    print_options
  end
end

catalog = Main.new

catalog.main
