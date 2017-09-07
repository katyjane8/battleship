require 'colorize'

module Messages

  def welcome_message
    #possible refactor here to add color and messages option "+="
    puts "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?.\n".light_blue
  end

  def instructions
    puts "You will have ten guesses to try and hit my battlship.\nShip coordinates must be consecutive and may not be placed diagonally.\nOnce your ships have been placed, you will begin taking turns with the computer, firing on ships until the enemy's fleet is completely sunk.\n\n\n".magenta
  end

  def quit_commands(command)
    %w(q Q quit Quit QUIT).include?(command)
    puts `clear`
  end

  def start_game
    puts "I have laid out my ships on the grid.\nYou now need to layout your two ships.\nThe first is two units long and the second is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the squares for the two-unit ship:".yellow
  end
  
  def clear_screen
   puts `clear`
  end

end
