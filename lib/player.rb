class Player 

  HIT_POINT_DEFAULT = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = HIT_POINT_DEFAULT
  end

  def attack(victim)
    victim.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end