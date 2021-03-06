class Squares
  attr_reader :number
  def initialize(n)
    @number = n
  end

  def square_of_sums
    (1..number).to_a.inject(:+)**2  
  end

  def sum_of_squares
    (1..number).to_a.map{|n| n**2}.inject(:+)
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
