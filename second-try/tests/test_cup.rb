require "dice_game/cup.rb"
require "test/unit"

class TestCup < Test::Unit::TestCase

  def test_cup()
    cup = Cup.new(2)
    assert_equal(2, cup.dice.length)
    assert_equal(0, cup.roll_num)
  end

  def test_add_dice()
    cup = Cup.new(2)
    cup.add_dice(2)
    assert_equal(4, cup.dice.length)

    cup.add_loaded_dice(2, 1)
    assert_equal(6, cup.dice.length)
    assert_equal(1, cup.dice.last.set_to)
  end

  def test_add_die()
    cup = Cup.new(2)
    a_loaded_die = LoadedDie.new(6, 1)
    cup.add_die(a_loaded_die)
    assert_equal(3, cup.dice.length)
    assert_equal(a_loaded_die, cup.dice.last)

    a_die = Die.new(6)
    cup.add_die(a_die)
    assert_equal(4, cup.dice.length)
    assert_equal(a_die, cup.dice.last)

    cup.add_die("not a die")
    cup.add_die(Cup.new(2))
    cup.add_die(3)
    assert_equal(4, cup.dice.length)
  end

  def test_roll()
    cup = Cup.new(6)
    10.times do
      cup.roll()
      assert_operator(cup.roll_num, :>=, cup.dice.length)
      assert_operator(cup.roll_num, :<=, cup.dice.length * 6)
    end

    cup.add_loaded_dice(6, 1)
    10.times do
      cup.roll()
      assert_operator(cup.roll_num, :>=, cup.dice.length)
      assert_operator(cup.roll_num, :<=, cup.dice.length * 6)
    end
  end

end
