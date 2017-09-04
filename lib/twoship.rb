require 'pry'
require 'board'

class TwoShip

  def place_two_ship
    @board_spaces[space1] = "Not Available"
    @board_spaces[space2] = "Not Available"
    @two_ship << space1
    @two_ship << space2
  end

  def create_two_ship(space1, space2)
    if valid_two_ship_placement?(space1,space2) == true
      place_two_ship(space1, space2)
      TwoShip.new(space1, space2)
    else
      puts "Space not valid, try again."
    end
  end

  def valid_two_ship_placement?(space1, space2)
    linked = two_ship_spaces_linked?(space1, space2)
    off_board = two_ship_placed_off_board?(space1, space2)
    vertical = two_ship_vertical_valid?(space1, space2)
    if linked == true && off_board == false
      return true
    elsif vertical == true
      return true
    else
      return false
    end
  end

  def two_ship_spaces_linked?(space1, space2)
    make_array_of_all_spaces = gameboard
    if gameboard.index(space2) - gameboard.index(space1) != 1
      return false
    else
      return true
    end
  end

  def two_ship_placed_off_board?(space1, space2)
    gameboard = make_array_of_all_spaces
    if gameboard.index(space1) == 3 || gameboard.index(space1) == 7 || gameboard.index(space1) == 15 || gameboard.index(space1) == 11
      return true
    else
      return false
    end
  end

  def two_ship_vertical_valid?(space1, space2)
    gameboard = make_array_of_all_spaces
    if gameboard.index(space2) - gameboard.index(space1) == 4
      return true
    else
      return false
    end
  end

end
