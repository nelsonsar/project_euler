class PrimeGenerator
  def initialize
    @last_prime = 2
  end

  def first(quantity_of_prime_numbers)
    results = create_prime_number_pool quantity_of_prime_numbers

    results.first(quantity_of_prime_numbers)
  end

  def next
    while (false == is_prime(@last_prime))
      @last_prime += 1
    end

    selected_prime = @last_prime
    @last_prime += 1

    return selected_prime
  end

  def create_prime_number_pool(number)
    pool = [2, 3]
    n = 5
    while (pool.length < number)
      pool << n if is_prime(n)
      n += 1
    end

    return pool
  end

  def is_prime(number)
    return false if number % 2 == 0 && number > 2
    max_divisor = Math.sqrt(number).to_i
    max_divisor = 1 if max_divisor == 0

    (2..max_divisor).each do |n|
      return false if number % n == 0
    end

    return true
  end

  private :create_prime_number_pool, :is_prime
end
