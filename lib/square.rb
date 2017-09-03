class Square
  attr_accessor :name,
                :ship,
                :fired_on,
                :result,
                :up,
                :down,
                :left,
                :right

  def initialize(name)
    @name = name
    @ship = false
    @fired_on = false
    @result = nil
    @up = nil
    @down = nil
    @left = nil
    @right = nil
  end

end
