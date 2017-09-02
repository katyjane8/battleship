require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/game'

class GameTest < MiniTest::Test
  def test_game_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_run_displays_welcome_message
    game = Game.new
    assert_equal ,
  end
end
