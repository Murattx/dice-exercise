class Die

  def initialize(sides)
    @sides = sides
  end

  attr_reader :sides

  def roll
    1 + rand(@sides)
  end

end
