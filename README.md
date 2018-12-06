# Mars Rover Kata (with a twist)

You have been tasked with finding water on Mars. Your rover will land at a random location on the planet and it's
up to you to program it to find water while avoiding obstacles.

The planet is provided to you in the form of a 2D array which represents the tiles of the planet.
The top level array represents the rows (or Y axis) and the nested arrays represent the columns (or X axis).
The materials include 's' for soil, 'x' for an obstacle which your rover should not run into, and 'w' for water.

Run with `ruby mission.rb`

Add your code to rover.rb

You shouldn't need to look at planet.txt but if you do, the top left corner would be coordinate (0,0)

There's no collision detection, and the water is always spawned in the same spot on the map so you're welcome to cheat
if you like -- but where's the fun in that!
