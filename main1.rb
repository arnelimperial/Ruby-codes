#!/usr/bin/env ruby

print "Anna jokin desimaaliluku: "

#Change the input to float
number = gets.chomp.to_f

#pass a parameter to round func rounded to nearest tenths
number_ = number.round(1)

print "Luku on pyöristettynä #{number_}"

