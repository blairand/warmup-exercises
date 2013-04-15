<<<<<<< HEAD
class Scrabble
  VALUES = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }

  def self.score(input)
    input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
  end

  def self.lookup(letter)
    VALUES.find{|key, value| key.include?(letter)}[1]
  end
end
=======
class Scrabble  
     SCORE_HASH = Hash.new(0)

    %w(A E I O U L N R S T).each do |letter|
      SCORE_HASH[letter] = 1
    end

    %w(D G).each do |letter|
      SCORE_HASH[letter] = 2
    end

    %w(B C M P).each do |letter|
      SCORE_HASH[letter] = 3
    end

    %w(F H V W Y).each do |letter|
      SCORE_HASH[letter] = 4
    end
    
    %w(K).each do |letter|
      SCORE_HASH[letter] = 5
    end
    
    %w(J X).each do |letter|
      SCORE_HASH[letter] = 8
    end
    
    %w(Q Z).each do |letter|
      SCORE_HASH[letter] = 10
    end

  def self.score(input)
    letters = input.upcase.split(//)
    scores = letters.collect{|letter| SCORE_HASH[letter]}
    puts scores.inject(:+)
  end

end

Scrabble.score("cabbage")
>>>>>>> adding result for scrabble problem
