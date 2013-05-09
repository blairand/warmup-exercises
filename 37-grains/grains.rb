class Grains
  def square(input)
    2 ** (input-1)
  end

  def total
    (1..64).map(&:square(i)).inject(:+) 
  end
end
