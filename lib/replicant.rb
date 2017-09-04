require './lib/board'
require 'pry'

class Replicant
    attr_accessor :ship_1, :ship_2, :shot, :shots, :two_ship,:three_ship, :board

    def initialize
      @ship_1 = []
      @ship_2 = []
      @shots = []
      @shot = nil
      @two_ship = 0
      @three_ship = 0
      @board = Board.new.board_spaces
    end


end
