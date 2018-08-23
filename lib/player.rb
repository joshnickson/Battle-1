class Player 

  HIT_POINT_DEFAULT = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = HIT_POINT_DEFAULT
  end

end