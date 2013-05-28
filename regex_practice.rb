class RegexPractice
  def self.find(input)
    input.match(/finished|delivered|started|accepted|edited|added|estimated/)[0]
  end
end
