class Anagram
  attr_reader :word
  def initialize(input)
    @word = input.split("").sort
  end

  def match(stuff)
    stuff.select do |w| 
      chompychomp(w) == @word
    end
  end

  def chompychomp(big_word)
    big_word.split("").sort
  end
end
