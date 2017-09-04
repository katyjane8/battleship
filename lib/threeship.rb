require 'pry'
require 'board'

class ThreeShip
  attr_accessor :spaces,
                :sunk,
                :hits

  def initialize(space1, space2, space3)
    @space1 = space1
    @space2 = space2
    @space3 = space3
    @hits = 0
    @sunk = false
  end

  def hit(space)
    if space == @space1 || space == @space3 || space == @space2
      @hits +=1
      ship_sunk
    end
  end

  def ship_sunk
    if @hits == 3
      @sunk = true
      puts "You sunk my big ship!!"
    end
  end

end
