class Luhn
  attr_reader :split_input
  def initialize(input)
    @split_input = input.to_s.split("").reverse
  end

  def check_digit
    new_checker = split_input.each_with_index.map do |char, index|
      if index.odd?
        result = char.to_i * 2 
        (result - 9) if result > 9 
      end
      result.to_s
    end.reverse
    if new_checker.inject(:+) % 10 == 0
      result = 0
    else
     

  end
end
