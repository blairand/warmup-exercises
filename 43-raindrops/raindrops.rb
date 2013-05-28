class Raindrops

  def initialize
  end

  def convert(n)
    factors = prime_factors(n)
    # result = print_factors(factors)
    if factors?(factors)
      result = print_factors(factors)
    else
      result = n.to_s
    end
    result
  end

  def prime_factors(n)
    return [] if n == 1
    factor = (2..n).find {|x| n % x == 0} 
    [factor] + prime_factors(n / factor) 
  end

  def factors?(factors)
    [3,5,7].map do |n|
      factors.include(n)
    end
  end

  def print_factors(factors, input)
    result = []
  end
end
