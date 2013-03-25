class Series
  attr_reader :digits
  def initialize(input)
    @digits = input.split("").map{|i| i.to_i}
  end

  def slices(input)
    slices = []
    digits.count.times do |i|
      slices << digits[i...i+input]
    end
    slices.reject{|i|i.count != input}
  end

  def largest_product(input)
    raise ArgumentError if input > digits.count
    slices(input).collect do |set|
      set.inject(:*)
    end.max
  end

end
