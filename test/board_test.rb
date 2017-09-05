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
end
