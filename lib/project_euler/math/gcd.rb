class GCD
  def self.between(first_number, second_number)
    return first_number if first_number == second_number
    return first_number if (second_number == 0)

    self.between(second_number, first_number % second_number)
  end
end
