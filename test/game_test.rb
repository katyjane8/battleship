require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/game'

class GameTest < MiniTest::Test
  def test_game_exists
    game = Game.new

    assert_instance_of Game, game
  end

  def test_display_welcome_message_after_run
    game = Game.new

    assert_equal "Welcome to BATTLESHIP\n\nWould you like to play (p), read the instructions (i), or quit(q)?\n", game.welcome_message
  end
end
