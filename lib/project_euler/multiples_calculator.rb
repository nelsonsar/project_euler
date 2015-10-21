class MultiplesCalculator
  def sum_all_below(number)
    sum = 0
    (number - 1).downto(1) do |n|
      sum += n if n % 3 == 0 || n % 5 == 0
    end

    return sum
  end
end

a = MultiplesCalculator.new
puts a.sum_all_below 1000
