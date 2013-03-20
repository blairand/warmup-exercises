def triangle(*sides)
  raise TriangleError if no_sizes(sides)?

  if equilateral?(sides)
    :equilateral
  elsif isosceles?(sides)
    :isosceles
  elsif scalene?(sides)
    :scalene
  else

  end
end

def scalene?(sides)
  return false if sides[0]==sides[1]
  return false if sides[1]==sides[2]
  return false if sides[0]==sides[2]
  return true
end

def isosceles?(sides)
  sides[0]==sides[1] || sides[1]==sides[2] ||sides[0]==sides[2]
end

def equilateral?(sides)
  sides[0] == sides[1] && sides[0] != sides[2] 
end

def no_sizes?(sides)
  sides
end
