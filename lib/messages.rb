require 'colorize'

module Messages

  def welcome_message
    "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?.\n"
  end

  def get_user_input(input = gets.chomp)
   input
  end

  def clear_screen
   puts `clear`
  end

end
