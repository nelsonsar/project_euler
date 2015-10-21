require './lib/project_euler/math/prime_generator'
require 'test/unit'

class TestPrimeGenerator < Test::Unit::TestCase
  def test_first_5
    expected_result = [2, 3, 5, 7, 11]
    generator = PrimeGenerator.new
    result = generator.first 5
    assert_equal(expected_result, result)
  end

  def test_next
    generator = PrimeGenerator.new

    assert_equal(2, generator.next)
    assert_equal(3, generator.next)
    assert_equal(5, generator.next)
    assert_equal(7, generator.next)
  end
end
