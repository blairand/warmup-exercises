class Robot
  attr_accessor :name

  def initialize
    @name = new_name
  end

  def reset
    @name = new_name
  end

  def new_name
    name = []
    6.times do 
      name << ((0..9).to_a + ("A".."Z").to_a).sample
    end
    name.join
  end



end


puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name


puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name
