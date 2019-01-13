#!/usr/bin/env ruby
#path
filename = Dir.getwd+"/5-2_tiedosto.txt"

loop do
    puts "Kirjoita jotain (lopeta lopettaa):"
    txt = gets.chomp.to_s
    if txt === "lopeta" or txt === "lopettaa"
        #Open file in read mode, read the whole file
        File.open(filename, "r") do |lines|
           puts lines.read
           exit
            
            
        end
        #Create a file 
    elsif File.file?(filename) == false
        File.open(filename, "w"){|f| f.write(txt)}

    else
        File.open(filename, "a+"){|f| f.write(txt)}
    end
    

end