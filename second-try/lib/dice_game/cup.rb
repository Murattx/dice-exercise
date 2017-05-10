class Cup

  def initialize(starting_num)
    @dice = []
    @roll_num = 0
    starting_num.times { @dice.push(Die.new(6)) }
  end

  attr_reader :dice
  attr_reader :roll_num

  def add_dice(dice_num)
    dice_num.times { @dice.push(Die.new(6)) }
    return self
  end

  def add_loaded_dice(dice_num, set_to)
    dice_num.times { @dice.push(LoadedDie.new(6, set_to)) }
  end

  def add_die(die)
    @dice.push(die) if die.kind_of? Die
  end

  def roll
    @roll_num = 0
    @dice.each { |die| @roll_num += die.roll }
    @roll_num
  end

end
