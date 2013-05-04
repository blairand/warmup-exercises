class SumOfMultiples

  def initialize(*numbs)
    @multiples = numbs    
  end

  def self.to(limit)
    new(3,5).to(limit)    
  end

  def to(limit)
    numbers = (0...limit).to_a
    results = numbers.select do |n|
      check_multiples.any? do |m|
        n % m == 0
      end 
    end
    results.inject(:+)
  end

  def check_multiples
    @multiples
  end
end
