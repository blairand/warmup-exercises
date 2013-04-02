class School
  attr_reader :students

  def initialize(input)
    name = input
    @students ||= Hash.new([])
  end

  def add(one, two)
    name = one
    number = two
    @students[number] += [name]
  end

  def db
    @students
  end

  def grade(number)
    @students[number]
  end

  def sort
    hash = {}
    @students.sort.each do |number,names|
      hash[number] = names.sort
    end
    hash
  end

  def student(name)
    @students.select{|key, array| array.include?(name) }
  end

end
