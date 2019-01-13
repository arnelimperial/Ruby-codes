#!/usr/bin/env ruby

def Oracle()

    oracle = rand(99) + 1
    if oracle <= 44 && oracle >= 20
        return "Ei missään nimessä!"
    end
    if oracle >=0 && oracle <=19
        return "Ei varmaankaan"
    end
    if oracle >=45 && oracle <=54
        return "En osaa sanoa."
    end
    if oracle >= 55 && oracle <=79
        return "Luultavasti kyllä."
    end
    if oracle >=80 && oracle <=99
        return "Ehdottomasti kyllä"
    end
end

print "Oraakkeli vastaa kyllä/ei-muodossa\n"
print "Kirjoita kysymyksesi Oraakkelille:\n"
question = gets

puts "Kysymyksesi oli: #{question}"
print "Tähän Oraakkeli vastasi:\n"
oracle = Oracle()
print oracle








