require './lib/ships'
require './lib/board'

class Player

attr_reader :name
attr_accessor :ship1,
              :ship2,
              :fire,
              :shots,
              :tiny_ship,
              :big_ship

  def initialize
    @name = name
    @ship1 = []
    @ship2 = []
    @shots = []
    @fire = nil
    @tiny_ship = 0
    @big_ship = 0
    @board = Board.new
  end

  def place_ships_computer
    create_ship1
    create_ship2
  end

  def create_ship1
    coord_1 = @board.board.sample
    ship1 << coord_1
    coord_2 = @board.second_coord[coord_1]
    ship1 << coord_2.sample
  end

  def create_ship2
    ship2_coord_1
    ship2_coord_2
    ship2_coord_3
  end

  def ship2_coord_1
    coord_1 = @board.board.sample
    coord_valid?(coord_1) ? ship2 << coord_1 : ship2_coord_1
  end

  def ship2_coord_2
    coord_2 = second_coord[ship2[0]].sample
    coord_valid?(coord_2) ? ship2 << coord_2 : ship2_coord_2
  end

  def fire_on_ship
    @fire = board.sample
    @shots.include?(@shot) ? fire_on_ship : @shots << @fire
    @fire
  end


end

#
# require 'pry'
#
# class Replicant
# end
# #   def initialize
#     @SHIPS = { tiny_ship: 2, big_ship: 3}
#   end
#
#   def board
#     board = Array.new(4) { Array.new(4, ".")}
#   end
#
#   def print_board(board)
#     board.map do |r|
#       puts r.each { |p| p }.join(" ")
#     end
#   end
# end
  # def random_ship_row
  #   return rand(2)
  #   rand(2) = ship_coord1
  #   if ship_coord1 == [0, 0]
  #     return true
  #   elsif ship_coord1 ==
  #
  # end
  #
  # def random_ship_col
  #   return rand(2)
  # end


  #   for turn in 1..10
  #   puts "Turn: #{turn}"
  #   puts "Guess Row (0-4): "
  #   guess_row = gets.chomp.to_i
  #   puts "Guess Column (0-4): "
  #   guess_col = gets.chomp.to_i
  #     if turn == 10
  #         puts "------\nGame Over!\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
  #         break
  #     elsif (guess_row == ship_row) && (guess_col == ship_col)
  #         puts "You sunk my battleship!"
  #         break
  #     else
  #         if ((guess_row < 0) || (guess_row > 4)) || ((guess_col < 0) || (guess_col > 4))
  #             puts "Guess again, that isn't on the board."
  #         elsif(board[guess_row][guess_col] == "M")
  #             puts "You guessed that one already."
  #         else
  #             puts "You missed my battleship!"
  #             board[guess_row][guess_col] = "M"
  #               if turn == 10
  #                  puts "Game Over\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
  #                  break
  #               end
  #         end
  #       end
  #     print_board(board)
  #   end
  # end
