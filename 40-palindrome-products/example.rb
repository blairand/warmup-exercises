class Palindromes
  def initialize(args)
    @max = args[:max_factor]
    @min = args[:min_factor] || 1
  end

  def generate
    @palindromes ||= build_all_palindromes
  end

  def build_all_palindromes
    factors = (@min..@max).to_a
    uniq_products = factors.map do |f|
      [factors.map{|m| m*f}]
    end.flatten.uniq
    @palindromes = uniq_products.select{|f| palindrome?(f)}
  end

  def largest
    palindrome = {
      palindrome: generate.sort.max, 
      maximum: @max, 
      minimum: @min 
    }
    Palindrome.new(palindrome)
  end

  def smallest
    palindrome = {
      palindrome: generate.sort.min, 
      maximum: @max, 
      minimum: @min 
    }
    Palindrome.new(palindrome)
  end


  def palindrome?(query)
    letters = query.to_s
    letters == letters.reverse
  end

end

class Palindrome
  attr_reader :number, :max, :min
  def initialize(args)
    @number = args[:palindrome]
    @max = args[:max]
    @min = args[:min]
    @factors = (1..@number).map do |n| 
      [n, @number/n] if ((@number/n) * n) == @number
    end.compact
  end

  def value
    @number
  end

  def factors
    # @factors.select do |first,second|
    #   clean?(first) && clean?(second)
    # end
    # result = []
    # @factors.each do |factor|
    #   result << factor if clean?(factor)
    # end
    @factors.select{|factors| clean?(factors)}
  end

  def clean?(array)
    first, second = array
    if @min > first > @max && @min > second > @max
      return true
    else
      return false
    end
  end
  
end
