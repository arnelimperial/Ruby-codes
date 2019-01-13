#!/usr/bin/ruby

def Arrange(str)
    #Make a string into an array of string
    str1 = str.strip.split(" ")
    #Sort to ascending order
    str2 = str1.sort
    #Removes duplicates in the array
    str3 = str2.uniq
    #Removes comma
   # str4 = str3.join(",")
    #Removes comma and replace with new line
    #str4 = str4.tr(",", "\n")
    
    print "Tässä sanat aakkosjärjestyksessä:\n"
    puts str3
   # puts str3
end


#Main
print "Kirjoita jotain:\n"

str = gets.chomp

Arrange(str)