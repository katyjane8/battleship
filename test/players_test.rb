gem 'minitest'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < MiniTest::Test

  def setup
    @new_player = Player.new
  end

  def test_computer_player_exists
    assert_instance_of Player, @new_player
  end

  #
  # def test_print_board
  #   board = Array.new(4, ".").map {|row| Array.new(4, ".")}
  #
  #   assert_equal "", @replicant.board
  # end
  #
  # def test_two_unit_ship_can_be_placed
  #
  # end

end
