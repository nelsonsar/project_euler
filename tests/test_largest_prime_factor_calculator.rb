require './lib/project_euler/largest_prime_factor_calculator'
require 'test/unit'

class TestLargestPrimeFactorCalculator < Test::Unit::TestCase
  def test_find_largest_prime_factor_of_13195
    prime_factor_calculator = LargestPrimeFactorCalculator.new

    result = prime_factor_calculator.find_largest_prime_factor_of 600_851_475_143

    assert_equal(6857, result)
  end
end


