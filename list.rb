#!/usr/bin/env ruby

def setToString(str)

    x_Tostring = str.join("").gsub(/\s+/," ")
    return x_Tostring
end

lists = Array[]

puts "Ostoslistalla on seuraavaa;\n\n"
puts "(1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:\n"
loop do
	
    
    selection = gets.to_i

    if selection == 1
        print "Mitä lisätään?: \n"
        list = gets
        lists.push(list)
        print "Ostoslistalla on seuraavaa;\n"

        puts setToString(lists)

    
    elsif selection == 2
        puts "Poistetaan #{lists.shift}"
        puts "Ostoslistalla on seuraavaa;"
        puts setToString(lists)
    
    elsif selection == 3
        puts "Koriin jäi #{lists.count} tuotetta:"

        if !(lists.empty?)
            puts setToString(lists)
            break
        else
            exit
        end
    end
	
	print "(1) Lisää tuote (2) Poista listan viimeinen tuote (3) Lopeta:\n"
end

