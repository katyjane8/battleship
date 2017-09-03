require './lib/twoship'
require './lib/threeship'
require 'pry'

class Board

  attr_accessor :board_spaces,
                :empty,
                :two_ship,
                :three_ship

  def initialize
    @board_spaces = {"A1"=>"Open", "A2"=>"Open", "A3"=>"Open", "A4"=>"Open",
      "B1"=>"Open", "B2"=>"Open", "B3"=>"Open", "B4"=>"Open",
      "C1"=>"Open", "C2"=>"Open", "C3"=>"Open", "C4"=>"Open",
      "D1"=>"Open", "D2"=>"Open", "D3"=>"Open","D4"=>"Open"}
      @empty = []
      @two_ship = []
      @three_ship = []
  end

  def create_two_ship(space1, space2)
    if valid_two_ship?(space1,space2) == true
      place_two_ship(space1, space2)
      two_ship = TwoShip.new(space1, space2)
    else
      puts "Space not valid, try again."
    end
  end

  def place_two_ship(space1, space2)
    @board_spaces[space1] = "Not Available"
    @board_spaces[space2] = "Not Available"
    @two_ship << space1
    @two_ship << space2
  end

  def available_two_ship_space?(space1, space2)
    linked = two_ship_linked?(space1, space2)
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

  def two_ship_linked?(space1, space2)
    gameboard = make_array_of_all_spaces
    if gameboard.index(space2) - gameboard.index(space1) != 1
      return false
    else
      return true
    end
  end
  # def two_ship_vertical_valid?(space1, space2)
  #   board =
  # end

end
