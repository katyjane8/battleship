gem 'minitest'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/twoship'

class BoardTest < MiniTest::Test

  def setup
    @new_board = Board.new
  end

  def test_board_exists
    assert_instance_of Board, @new_board
  end

  def test_board_can_create_array
    assert_equal ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"], @new_board.board_array
  end



end
