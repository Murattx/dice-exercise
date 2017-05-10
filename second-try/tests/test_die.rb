require "dice_game/die.rb"
require "test/unit"

class TestDie < Test::Unit::TestCase

  def test_die()
    die = Die.new(6)
    assert_equal(6, die.sides)
  end

  def test_roll()
    die = Die.new(6)
    10.times do
      assert_operator(die.roll, :>, 0)
      assert_operator(die.roll, :<=, die.sides)
    end
  end

end
