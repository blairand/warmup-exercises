class Queens

  def initialize(args={white: [0, 3], black: [7, 3]})
    @white = args[:white]
    @black = args[:black]
    perform_validation
  end

  def perform_validation
    raise "ArguementError" if @white == @black
  end

  def white
    @white
  end

  def black
    @black
  end

  def random
    (0..8).to_a
  end

  def to_s
"O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O"
  end


end
