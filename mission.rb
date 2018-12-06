require_relative './rover.rb'

def random_landing_on(planet)
  rng = Random.new
  min_x_coord = 1
  max_x_coord = planet.first.length - 2
  min_y_coord = 1
  max_y_coord = planet.length - 2

  loop do
    x_coord = rng.rand(min_x_coord..max_x_coord)
    y_coord = rng.rand(min_y_coord..max_y_coord)
    return { x: x_coord, y: y_coord } if planet[y_coord][x_coord] == 's'
  end
end

def material_at(planet, coords)
  case planet[coords[:y]][coords[:x]]
  when 'x'
    "an obstacle"
  when 's'
    "soil"
  end
end

planet = File.readlines('planet.txt').map! { |line| line.strip.split('') }

landing_coords = random_landing_on(planet)

rover = Rover.new(planet, landing_coords)

water_coords = rover.run

if planet[water_coords[:y]][water_coords[:x]] == 'w'
  puts "YOU FOUND WATER ON MARS!"
else
  puts "Rover incorrectly reported water at #{water_coords}. That spot contains #{material_at(planet, water_coords)}"
end
