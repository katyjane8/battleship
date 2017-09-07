gem 'minitest'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/ships'

class ShipsTest < MiniTest::Test

  def setup
    @new_ship = Ship.new
  end

  # def test_tiny_ship_can_be_placed
  #   assert_equal ["A1", "A2"], @new_ship.place_tiny_ship
  # end
  #
  # def test_two_ship_exists
  #   assert_instance_of TwoShip, @two_unit_ship.create_two_ship("D2", "D3")
  # end

  # def test_two_ship_can_be_placed
  #   assert_equal ["D2", "D3"], @two_unit_ship.place_two_ship
  # end
  #
  # def test_if_spaces_can_be_linked
  #   @two_unit_ship.place_two_ship("B1", "B4")
  #   refute @two_unit_ship.two_ship_spaces_linked?("B1", "B4")
  #
  #   @two_unit_ship.place_two_ship("D1", "A1")
  #   refute @two_unit_ship.two_ship_spaces_linked?("D1", "A1")
  #
  #   @two_unit_ship.place_two_ship("B4", "B1")
  #   refute @two_unit_ship.two_ship_spaces_linked?("B4", "B1")
  #
  #   @two_unit_ship.place_two_ship("A2", "D4")
  #   refute @two_unit_ship.two_ship_spaces_linked?("A2", "D4")
  #
  #   @two_unit_ship.place_two_ship("A2", "A3")
  #   assert_equal true, @two_unit_ship.two_ship_spaces_linked?("A2", "A3")
  # end
  #
  # def test_vertical_two_ship_placement_works
  #   assert_equal true, @two_unit_ship.two_ship_vertical_valid?("A1", "B1")
  # end


end
