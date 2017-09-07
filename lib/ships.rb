require 'pry'
require './lib/board'

class Ships



  # def create_two_ship(space1, space2)
  #   if valid_two_ship_placement?(space1,space2) == true
  #     place_two_ship(space1, space2)
  #     TwoShip.new(space1, space2)
  #   else
  #     puts "Space not valid, try again."
  #   end
  # end
  #
  # def valid_two_ship_placement?(space1, space2)
  #   linked = two_ship_spaces_linked?(space1, space2)
  #   off_board = two_ship_placed_off_board?(space1, space2)
  #   vertical = two_ship_vertical_valid?(space1, space2)
  #   if linked == true && off_board == false
  #     return true
  #   elsif vertical == true
  #     return true
  #   else
  #     return false
  #   end
  # end
  #
  # def two_ship_spaces_linked?(space1, space2)
  #   make_array_of_all_spaces = gameboard
  #   if gameboard.index(space2) - gameboard.index(space1) != 1
  #     return false
  #   else
  #     return true
  #   end
  # end
  #
  # def two_ship_placed_off_board?(space1, space2)
  #   gameboard = make_array_of_all_spaces
  #   if gameboard.index(space1) == 3 || gameboard.index(space1) == 7 || gameboard.index(space1) == 15 || gameboard.index(space1) == 11
  #     return true
  #   else
  #     return false
  #   end
  # end
  #
  # def two_ship_vertical_valid?(space1, space2)
  #   gameboard = make_array_of_all_spaces
  #   if gameboard.index(space2) - gameboard.index(space1) == 4
  #     return true
  #   else
  #     return false
  #   end
  # end


  # require 'pry'
  # require 'board'
  #
  # class ThreeShip
  #   attr_accessor :spaces,
  #                 :sunk,
  #                 :hits
  #
  #   def initialize(space1, space2, space3)
  #     @space1 = space1
  #     @space2 = space2
  #     @space3 = space3
  #     @hits = 0
  #     @sunk = false
  #   end
  #
  #   def hit(space)
  #     if space == @space1 || space == @space3 || space == @space2
  #       @hits +=1
  #       ship_sunk
  #     end
  #   end
  #
  #   def ship_sunk
  #     if @hits == 3
  #       @sunk = true
  #       puts "You sunk my big ship!!"
  #     end
  #   end
  #
  # end

end
