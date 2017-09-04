gem 'minitest'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/Replicant'
require './lib/board'

class ReplicantTest < MiniTest::Test

  def setup
    @replicant = Replicant.new
  end

  def test_computer_player_exists
    assert_instance_of Replicant, @replicant
  end

  def test_it_starts_with_ship_placement
    assert_instance_of Array, @replicant.ship_1
  end

  def test_it_starts_with_empty_board
    skip
    assert_instance_of Hash, @replicant.board
  end

end
