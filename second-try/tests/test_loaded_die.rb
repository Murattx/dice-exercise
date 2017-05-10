require "dice_game/loaded_die.rb"
require "test/unit"

class TestLoadedDie < Test::Unit::TestCase

  def test_loaded_die()
    a_loaded_die = LoadedDie.new(6, 1)
    assert_equal(6, a_loaded_die.sides)
    assert_equal(1, a_loaded_die.set_to)
  end

  def test_loaded_roll()
    a_loaded_die = LoadedDie.new(6, 1)
    rolls = []
    roll_num = 1000000

    roll_num.times do
      rolls.push(a_loaded_die.roll)
    end

    percentage = (rolls.count(a_loaded_die.set_to).to_f / roll_num.to_f * 100).round
    assert_equal(50, percentage)
  end

end
