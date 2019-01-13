#!/usr/bin/ruby

def tulostaja(str = "Oletusarvo", integer = 5, *d)
    i = 1
    begin
        print "#{str+' '}"
        i += 1
    end until i > integer 
    print d

    

end
tulostaja("Metodeilla voimaa!", 2)
puts " "
tulostaja("Toimii!")
puts " "
tulostaja
puts ' '
