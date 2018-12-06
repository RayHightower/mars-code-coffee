class Rover
  def initialize(planet, landing_coords)
    @planet = planet
    @x = landing_coords[:x]
    @y = landing_coords[:y]
  end

  def run
    # this is called by your mission to kick things off
    # it should return coordinates where it found water in the form of { x: 0, y: 0 }
  end
end
