#!/usr/bin/env ruby

#Fibonacci function
def fibonacci(int)
    if int == 1
        return 1 
    end
    if int == 2
        return 2
    end
    # return 
    return fibonacci(int - 1) + fibonacci(int -2)
end

#print w/o new line
print "Montako kierrosta lasketaan?: "

# convert to int w/out new line
number = gets.chomp.to_i

#for loop from 1 to the given num
for i in 1..number do
    #display w/ new line ..puts
    puts "Seuraava Fibonaccin luku on #{fibonacci(i)}."
end