#!/usr/bin/ruby

def convertBinary(a)
    b = (a.to_i).to_s(2)
    return b
end

def convertHex(a)
    c = (a.to_i).to_s(16)
    return c
end

print "Anna joku luku:"

num = gets

puts "Antamasi luku on binaariarvoina #{convertBinary(num)} ja heksoina #{convertHex(num)}"
