<<<<<<< HEAD
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
=======
class Sieve

  attr_reader :limit
  def initialize(limit)
    @limit = limit
  end

  def primes
    @primes ||= calculate
  end

  private
  def calculate
    numbers = (2..limit).to_a
    primes = []
    begin
      target = numbers.shift
      primes << target
      numbers.reject! {|i| i % target == 0 }
    end until numbers.empty?
    primes
  end

end

>>>>>>> 001b90ed8cef400488f4d6ed8791677c19c3383a
