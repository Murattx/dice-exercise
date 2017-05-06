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
