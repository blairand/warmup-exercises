class Prime
  include Enumerable
  @the_instance = Prime.new

  def initialize
    @generator = EratosthenesGenerator.new
    warn "Prime::new is obsolete. use Prime::instance or class methods of Prime."
  end

  class << self
    include Enumerable
    # Returns the default instance of Prime.
    def instance; @the_instance end
  end

  def each(ubound = nil, generator = EratosthenesGenerator.new, &block)
    generator.upper_bound = ubound
    generator.each(&block)
  end

  def self.nth(input)
    result = []
    
    Prime.each(input) do |p|
      result << p 
    end
    result.last
  end

  def prime?(value, generator = Prime::Generator23.new)
    value = -value if value < 0
    return false if value < 2
    for num in generator
      q,r = value.divmod num
      return true if q < num
      return false if r == 0
    end
  end

  def int_from_prime_division(pd)
    pd.inject(1){|value, (prime, index)|
      value *= prime**index
    }
  end

  def prime_division(value, generator= Prime::Generator23.new)
    raise ZeroDivisionError if value == 0
    if value < 0
      value = -value
      pv = [[-1, 1]]
    else
      pv = []
    end
    for prime in generator
      count = 0
      while (value1, mod = value.divmod(prime)
             mod) == 0
        value = value1
        count += 1
      end
      if count != 0
        pv.push [prime, count]
      end
      break if value1 <= prime
    end
    if value > 1
      pv.push [value, 1]
    end
    return pv
  end
end
