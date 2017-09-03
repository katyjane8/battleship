require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < MiniTest::Test
  def test_board_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_board_size
    board = Board.new

    assert_equal 4, board.size
  end

end
