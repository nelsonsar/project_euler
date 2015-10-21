class LargestPrimeFactorCalculator
  def initialize()
    @prime_generator = PrimeGenerator.new
  end

  def find_largest_prime_factor_of(a_number)
    quocient = a_number
    largest_prime = 0
    loop do
      n = @prime_generator.next
      while (quocient % n == 0)
        quocient = quocient / n
      end
      largest_prime = n
      break if quocient == 1
    end

    return largest_prime
  end
end
