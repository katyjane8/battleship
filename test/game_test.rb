require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < MiniTest::Test
  def setup
    @new_game = Game.new
  end

  def test_game_exists
    assert_instance_of Game, @new_game
  end


end
