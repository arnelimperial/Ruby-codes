#!/usr/bin/ruby

def Slice(i)
    
    return "Ensimmäiset kolme merkkiä: #{i[0..2]}\nViimeiset kaksi merkkiä: #{i[-2..-1]}\nKolmannesta merkistä eteenpäin: #{i[2..-1]}"

end


#Main
print "Kirjoita jotain:\n"

item = gets.chomp
puts Slice(item)
