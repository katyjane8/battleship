require 'colorize'

module Messages

  def welcome_message
    #possible refactor here to add color and messages option "+="
    puts "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?.\n".cyan
  end

  def instructions
    puts "You will have ten guesses to try and hit my battlship.\nShip coordinates must be consecutive and may not be placed diagonally.\nOnce your ships have been placed, you will begin taking turns with the computer, firing on ships until the enemy's fleet is completely sunk.\n\n\n".magenta
  end

  def quit_commands(command)
    %w(q Q quit Quit QUIT).include?(command)
    puts `clear`
  end

  def clear_screen
   puts `clear`
  end

end
