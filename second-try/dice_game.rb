# Coding exercise for [REDACTED]

require_relative 'dice_game/die'
require_relative 'dice_game/loaded_die'
require_relative 'dice_game/cup'

# A method to test the frequency of the set number when rolling a loaded die. Answer seems to approach 58% so this seems not to be a perfect answer.
def testLoadedDie(rollNum, setTo)
  rolls = []
  aDie = LoadedDie.new(6, setTo)

  rollNum.times {
    rolls.push(aDie.roll)
  }

  percentage = (rolls.count(setTo).to_f / rollNum.to_f * 100).to_i
  puts "Loaded die landed on #{setTo} #{percentage}% of the time."
end

testLoadedDie(100000, 1) # >> "Loaded die landed on 1 58% of the time."
# Actually this makes a lot of sense because calling super will sometimes result in the same number as setTo.

aDie = Die.new(6)
puts "Rolling 1 die: #{aDie.roll}"

aCup = Cup.new(2)
aCup.roll
aCup.addDice(4).roll # Total dice == 6
aCup.addDice(6).roll # Total dice == 12
aCup.addDice(108).roll # Total dice == 120

aLoadedDie = LoadedDie.new(6, 1)
puts "Rolling a loaded die set to '#{aLoadedDie.setTo}': #{aLoadedDie.roll}"
puts "Rolling a loaded die set to '#{aLoadedDie.setTo}': #{aLoadedDie.roll}"
