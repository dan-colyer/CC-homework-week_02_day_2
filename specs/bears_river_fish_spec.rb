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
    @river = River.new("Amazon", ["Jim"])
    @fish_1 = Fish.new("Jones")
    @bear = Bear.new("Yogi")
  end

#Test 1
  def test_bear_takes_fish
    result = @bear.bear_takes_fish(@fish_1)
    assert_equal(1, result)
  end



end
