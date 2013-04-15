require 'prime'

class Sieve
  attr_reader :numbers
  def initialize(input)
    @numbers = (2..input).to_a.zip([0]*input)
    @numbers.each_with_index(2) do |number,i|

      # 1.upto(input){|p|@numbers[(p*2)-1][1]=1}
    end

  end

  def primes
    @numbers
  end
end
