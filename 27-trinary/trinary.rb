class Trinary
  attr_reader :trinary

  def initialize(trinary)
    @trinary = trinary.split("").map{|i|i.to_i}        
  end

  def to_decimal
    result = 0 
    @trinary.reverse.each_with_index{|n,i| result += (n * (3**i))}
    result
  end

end
