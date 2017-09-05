gem 'minitest'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/Replicant'

class ReplicantTest < MiniTest::Test

  def setup
    @replicant = Replicant.new
  end

  def test_computer_player_exists
    assert_instance_of Replicant, @replicant
  end

  def test_empty_array_is_created
    assert_equal [[".", ".", ".", "."], [".", ".", ".", "."], [".", ".", ".", "."], [".", ".", ".", "."]], @replicant.board
  end

end
