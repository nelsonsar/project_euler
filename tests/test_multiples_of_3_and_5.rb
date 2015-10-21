require './lib/project_euler/multiples_calculator'
require 'test/unit'

class TestMultiples < Test::Unit::TestCase
  def test_sum_multiples_of_3_and_5_below_10
    multiples_calculator = MultiplesCalculator.new

    result = multiples_calculator.sum_all_below 10

    assert_equal(23, result)
  end
end


