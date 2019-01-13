#!/usr/bin/env ruby


str = "Atte kumiorava varo imuketta"

p = str.downcase.tr(" ", "").reverse

a = str.downcase.tr(" ", "")

y = (a === p)

puts y



