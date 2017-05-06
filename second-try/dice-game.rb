# Coding exercise for [REDACTED]

class Die

  def initialize(sides)
    @sides = sides
  end

  def roll
    1 + rand(@sides)
  end

end

class LoadedDie < Die

  def initialize(sides, setTo)
    super(sides)
    @setTo = setTo
  end

  attr_reader :setTo

  def roll
    if rand(2) == 0
      # Exclude final number from random range. If result equals the @setTo value, return the excluded number instead.
      loadedRoll = 1 + rand(@sides - 1)
      loadedRoll != @setTo ? loadedRoll : @sides
    else
      @setTo
    end
  end

end

class Cup

  def initialize(startingNum)
    @dice = []
    @rollNum = 0
    startingNum.times { @dice.push(Die.new(6)) }
  end

  def addDice(diceNum)
    diceNum.times { @dice.push(Die.new(6)) }
    return self
  end

  def roll
    @dice.each { |die| @rollNum += die.roll }
    puts "Rolling #{@dice.length} dice in a cup: #{@rollNum}"
  end

end


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
