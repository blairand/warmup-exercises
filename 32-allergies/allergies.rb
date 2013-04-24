class Allergies
  attr_reader :taco
  def initialize(input)
    calculate_allergy(input)
  end

  def calculate_allergy(input)
    @taco = input.to_s(2).split("").reverse

    @taco.each do |char|


    end
    if key.has_key?(input)
      @taco = key[input]
    else
      copy = key.dup
      if copy.max[0] > input
        copy.delete(copy.max[0])
      else

      end
      # start at the top
      # subtract the key from the input
    end
  end

  def key
    {
      1 => "eggs",
      2 => "peanuts",
      3 => "shellfish",
      4 => "strawberries",
      5 => "tomatoes",
      6 => "chocolate",
      7 => "pollen",
      8 => "cats"
    }
  end

  def list
    @taco.split
  end
end
