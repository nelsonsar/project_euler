class EvenFibonacciCalculator
  def sum_even_below(number)
    sum = 0

    fibonacci_sequence = generate_fibonacci_sequence_until(number)

    fibonacci_sequence.each do |n|
      sum += n if n % 2 == 0
    end

    return sum
  end

  def generate_fibonacci_sequence_until(number)
    fibonacci_sequence = [1, 2]

    fibonacci_number = 0

    loop do
      last_index = fibonacci_sequence.length - 1
      last_sequence_element = fibonacci_sequence[last_index]
      penultimate_sequence_element = fibonacci_sequence[last_index - 1]
      fibonacci_number = last_sequence_element + penultimate_sequence_element

      break if fibonacci_number > number

      fibonacci_sequence << fibonacci_number
    end

    return fibonacci_sequence
  end

  private :generate_fibonacci_sequence_until
end
