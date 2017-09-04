require 'pry'

class Board

  attr_accessor :board_spaces,
                :empty,

  def board
  @boardhash = {"A1"=>"Open", "A2"=>"Open", "A3"=>"Open", "A4"=>"Open",
      "B1"=>"Open", "B2"=>"Open", "B3"=>"Open", "B4"=>"Open",
      "C1"=>"Open", "C2"=>"Open", "C3"=>"Open", "C4"=>"Open",
      "D1"=>"Open", "D2"=>"Open", "D3"=>"Open","D4"=>"Open"}
  end

  def make_array_of_all_spaces
    board_array = []
    @boardhash.key.each do |space|
      board_array << space
    end
    board_array
  end

  def make_array_of_empty_spaces
    @empty = []
    @boardhash.key.each do |space|
      if board_spaces[space] == "Open"
        @empty << space
      end
    end
    @empty
  end

  def make_array_of_occupied_spaces
    not_available = []
    @boardhash.key.each do |space|
      if board_spaces[space] == "Not Available"
        not_available << space
      end
    end
    not_available
  end

end
