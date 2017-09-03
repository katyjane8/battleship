require './lib/square'

class Board

  attr_reader :size

  def initialize
    @size = size
  end

  def build_board
    grid = initialize_empty_gameboard
    blank_gameboard = grid.map do |letter_array|
      row = {}
      letter_array.each do |square_name|
        row[square_name] = Square.new(square_name)
      end
      row
  end
  blank_gameboard
  end

  def initialize_empty_gameboard
    alpha_row_names = ("a".."z").to_a
    rows = alpha_row_names.slice(0..(size - 1))
    empty_spaces = rows.map do |row|
      row = (1..size).map do |num|
        "#{row}#{num}"
      end
  end
  empty_spaces
end

end
