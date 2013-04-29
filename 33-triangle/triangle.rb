class FindShape

  def self.triangle(*sides)
    raise TriangleError if no_sizes(sides)?
    case sides
      when equilateral?(sides)
        :equilateral
      when isosceles?(sides)
        :isosceles
      when scalene?(sides)
        :scalene
      else
        "taco"
      end
  end

  def self.scalene?(sides)
    return false if sides[0]==sides[1]
    return false if sides[1]==sides[2]
    return false if sides[0]==sides[2]
    return true
  end

  def self.isosceles?(sides)
    sides[0]==sides[1] || sides[1]==sides[2] ||sides[0]==sides[2]
  end

  def self.equilateral?(sides)
    sides[0] == sides[1] && sides[0] != sides[2] 
  end

  def self.no_sizes?(sides)
    sides
  end
end

class Triangle
  
  def initialize(input1,input2,input3)
    @side1 = input1
    @side2 = input2
    @side3 = input3
    set_type
  end

  def set_type
    @type = FindShape.triangle(@side1,@side2,@side3)
  end

  def kind
    @type
  end

end

