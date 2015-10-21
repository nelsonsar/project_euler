require './lib/project_euler/math/gcd'
require 'test/unit'

class TestGCD < Test::Unit::TestCase
  def test_find_gcd_of_48_and_18
    result = GCD.between(48, 18)
    assert_equal(6, result)
  end
end
