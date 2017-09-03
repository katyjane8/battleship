require 'pry'

class TwoShip
  attr_accessor :space1,
                :space2,
                :hit,
                :sunk

  def initialize(space1, space2)
    @space1 = space1
    @space2 = space2
    @hit = 0
    @sunk = false
  end

end
