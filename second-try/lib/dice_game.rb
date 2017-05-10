# Coding exercise for [REDACTED]

require_relative 'dice_game/die'
require_relative 'dice_game/loaded_die'
require_relative 'dice_game/cup'

a_die = Die.new(6)
puts "Rolling 1 die: #{a_die.roll}"

a_cup = Cup.new(2)
puts a_cup.roll
puts a_cup.add_dice(4).roll # Total dice == 6
puts a_cup.add_dice(6).roll # Total dice == 12
puts a_cup.add_dice(108).roll # Total dice == 120

a_loaded_die = LoadedDie.new(6, 1)
puts "Rolling a loaded die set to '#{a_loaded_die.set_to}': #{a_loaded_die.roll}"
puts "Rolling a loaded die set to '#{a_loaded_die.set_to}': #{a_loaded_die.roll}"
