class Series
  def initialize(input)
    @series = input.split("").map{|m|m.to_i}
  end

  def digits
    @series
  end

  def slices(input)
    @slices = []
    digits.count.times do |i|
      @slices << digits[i...i+input]
    end
    @slices.reject{|group|group.size != input}
  end

  def largest_product(input)
    if input > @series.count 
      raise ArgumentError.new
    else
      slices(input).map do |group|
        group.inject(:*)
      end.max
    end
  end

end
