require './lib/project_euler/even_fibonacci_calculator'
require 'test/unit'

class TestEvenFibonacciCalculator < Test::Unit::TestCase
  def test_sum_even_below_90
    even_calculator = EvenFibonacciCalculator.new

    result = even_calculator.sum_even_below 90

    assert_equal(44, result)
  end
end


