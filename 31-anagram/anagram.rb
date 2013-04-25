class Anagram
  attr_reader :word
  def initialize(input)
    @word = input.split("").sort
  end

  def match(matching)
    matching.select do |w| 
      anagram(w) == @word
    end
  end

  def anagram(test_word)
    test_word.split("").sort
  end
end
