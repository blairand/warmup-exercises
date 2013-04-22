class PrimeFactors
  def prime_list
    [2,3,5,7,11,13]
  end

  def self.for(input)
    result = []
    number = input
    while number > 2
      prime_list.each do |n|
        if number%n==0
          number / n
          result << n
        end
      end
    end
    result
  end
end
