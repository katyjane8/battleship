require 'colorize'
module Messages

  def welcome_message
    message = "Welcome to BATTLESHIP".blue.bold.underline
    message += "\n\nWould you like to "
    message += "(p)".green
    message += "lay, read the "
    message += "(i)".yellow
    message += "nstructions, or "
    message += "(q)".red
    message += "uit?\n"
    message
  end

  def get_user_input(input = gets.chomp)
   input
  end
  
end
