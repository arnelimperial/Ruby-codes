#!/usr/bin/env ruby

def divisible(int)
   x = int % 3
   y = int % 5
   z = int % 7

   if x == 0 && y == 0 && z == 0
    return "Sopiva luku löytyi: #{int}"
   end
end

#Main

puts "Anna aloituspaikka:"

num = gets.chomp.to_i


loop do
    div = divisible(num)

    if !(div)
        puts "#{num} ei kelpaa.."
        divisible(num += 1)
    end
    if div
        puts div
        exit
    end

end


