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

  def test_game_can_get_user_input
    game = Game.new

    assert_equal "", game.get_user_input
  end

  def test_player_option_p
    game = Game.new

    assert_equal "p", game.begin_game
  end

  def test_game_can_begin
    game = Game.new

    assert_equal "Dave", game.begin_game
    assert_equal "Hal", game.begin_game
  end
end
