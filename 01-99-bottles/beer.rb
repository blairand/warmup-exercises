class Beer

  def self.song(times=99, drink="beer")
    count = 0
    line = " "
    1.upto(times) do |song|
      if count == 98
        puts "#{times-count} bottles of #{drink} on the wall, #{times-count} bottles of #{drink}. "
<<<<<<< HEAD
        puts "Take one down, pass it around, no more bottles of #{drink} on the wall.\n\n"
=======
        puts "Take it down, pass it around, no more bottles of #{drink} on the wall.\n\n"
>>>>>>> 31d12885f62352ac8805290adf920ed2c5722825
        puts "No more bottles of #{drink} on the wall, no more bottles of #{drink}."
        puts "Go to the store and buy some more, 99 bottles of beer on the wall."
      else
        puts "#{times-count} bottles of #{drink} on the wall, #{times-count} bottles of #{drink}. "
        count +=1 
<<<<<<< HEAD
        puts "You take one down, pass it around, #{times-count} bottles of beer on the wall\n\n"
=======
        puts "Take one down, pass it around, #{times-count} bottles of beer on the wall\n\n"
>>>>>>> 31d12885f62352ac8805290adf920ed2c5722825
      end
    end

  end
end

Beer.song