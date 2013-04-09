class SecretHandshake
  attr_reader :secret
  def initialize(input)
    @secret = input.to_i(2)
    puts @secret
  end

  def commands
    if @secret == 1
      ["wink"]
    elsif @secret == 2
      ["double blink"]
    elsif @secret == 3
      ["wink","double blink"]
    elsif @secret == 4
      ["close your eyes"]
    elsif @secret == 8
      ["jump"]
    else
    end
  end

end
