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
