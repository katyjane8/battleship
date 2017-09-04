require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require './lib/game'

class GameTest < MiniTest::Test
  def test_game_exists
    game = Game.new

    assert_instance_of Game, game
  end

  def test_game_can_run
    game = Game.new

    assert_equal "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?.\n", game.welcome_message
  end

end
