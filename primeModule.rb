#!/usr/bin/env ruby

#module definition
module Prime
    #module method
    def primeFactor(var)

        a = var % 2
        b = var / 2
        c = b  % 2
        d = var % 3
        e = var /3
        f = e % 3
        g = var % 5
        h = var / 5
        i = h % 5
        j = var % 7
        k = var / 7
        l = k % 7
        m = var % 11
        n = var /11
        o = n % 11
        p = var % 13
        q = var /13
        r = q % 13
        #proof for 2,3,5,7,11,13 as prime
        if a == 0 && b == 1 && c == 1
            return "#{var} on alkuluku!."
        
        elsif d == 0 && f == 1
            return "#{var} on alkuluku!."
        elsif g == 0 && i == 1
            return "#{var} on alkuluku!."
        elsif j == 0 && l == 1
            return "#{var} on alkuluku!."
        elsif m == 0 && o == 1
            return "#{var} on alkuluku!."
        elsif p == 0 && r == 1
            return "#{var} on alkuluku!."
        else
            return "#{var} ei ole alkuluku."
            
        end
    end

end

#class definition
class Numbers
    #include module
    include Prime

end



#Main
#Create object
#vars = Numbers.new()
#require 'primeModule.rb

include Prime #Use include if no class is inlcluded
print "Monenteenko lukuun asti etsitään?: "
number = gets.chomp.to_i

i = 2
begin
    #Module method usage
   # puts vars.primeFactor(i)
    puts Prime::primeFactor(i)
    i += 1

end until i > (number - 1)

