require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


# How our ecosystem works
#     A river should have a name e.g. "Amazon"
#     A river should hold many fish
#     A fish should have a name
#     A bear should have a name e.g. "Yogi"
#     A bear should have an empty stomach ( maybe an array )
#     A bear should be able to take a fish from the river
#     A river should lose a fish when a bear takes a fish
#
# Extensions
#
#     A bear could have a roar method
#     A bear could have a food_count method
#     A river could have a fish_count method

class TestEco_System < MiniTest::Test
  def setup
    @fish_1 = Fish.new("Jones")
    @river = River.new("Amazon", [@fish_1])
    @bear = Bear.new("Yogi")
  end

#Test 1 & 2
  def test_bear_takes_fish
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.get_stomach_length())
    assert_equal(0, @river.fish_pop.length)
  end

# Test 3
  def test_bear_roar
    assert_equal("Roar", @bear.bear_roar)
  end

# Test 4
  def test_river_fish_count
    assert_equal(1, @river.river_fish_count)
  end



end
