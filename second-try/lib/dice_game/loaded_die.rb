class LoadedDie < Die

  def initialize(sides, set_to)
    super(sides)
    @set_to = set_to
  end

  attr_reader :set_to

  def roll
    if rand(2) == 0
      # Exclude final number from random range. If result equals the @set_to value, return the excluded number instead.
      loaded_roll = 1 + rand(@sides - 1)
      loaded_roll != @set_to ? loaded_roll : @sides
    else
      @set_to
    end
  end

end
