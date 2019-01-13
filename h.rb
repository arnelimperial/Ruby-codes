#!/usr/bin/env ruby

require 'rubygems'
require 'nokogiri'


a = ["a", "b", "c"]

j = "cat"

x = ["de", "f", "ga"]
s = "rfedety hgtgata"
s[x[0]] = "*****"
s[x[2]] = "*****"
#s[[x]] = "***"

#puts s

a = 2 % 2
b = a / 2
c = b % 2

#puts a
#puts b
#puts c 

#a = "<div>Hello</div>"
#doc = Nokogiri::HTML(a)
#p doc.text

tiedosto = File.open("sample.html")

rivit = []
tiedosto.each{|rivi| rivit << rivi}
tiedosto.close
		
		#tulos = siisti(rivit)
puts rivit.join.split(" ")
        

