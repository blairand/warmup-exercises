class Beer

  def self.song(times=99, drink="beer")
    count = 0
    line = " "
    1.upto(times) do |song|
      if count == 98
        puts "#{times-count} bottles of #{drink} on the wall, #{times-count} bottles of #{drink}. "
        puts "Take one down, pass it around, no more bottles of #{drink} on the wall.\n\n"
        puts "No more bottles of #{drink} on the wall, no more bottles of #{drink}."
        puts "Go to the store and buy some more, 99 bottles of beer on the wall."
      else
        puts "#{times-count} bottles of #{drink} on the wall, #{times-count} bottles of #{drink}. "
        count +=1 
        puts "You take one down, pass it around, #{times-count} bottles of beer on the wall\n\n"
      end
    end

  end
end

Beer.song