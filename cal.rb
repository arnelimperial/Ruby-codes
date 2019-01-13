#!/usr/bin/env ruby

module Calculator

    def calculate(ints, var1, var2)
        case ints
        when 1
            return var1 + var2
        when 2
            return var1 - var2
        when 3
            return var1 * var2
        when 4
            return var 1 / var2
        when 6
            abort
        else
            return "Error"
        end
    end
    
end

            

class Calculate
    include Calculator
end

vars = Calculate.new

begin
	print "Anna luku: "
	num1 = gets.chomp.to_f
	
	print "Anna luku: "
	
	num2 = gets.chomp.to_f
	
rescue ZeroDivisionError => e
    
    puts e.message
	retry
		
rescue TypeError => e
    puts e.meesage
    retry
		
end

loop do
	
	puts "\nArvot luku1 = #{num1} ; luku2 = #{num2}"
	
	puts "1: + 2: - 3: * 4: / 5: Vaihda luvut 6: Lopeta"
	
	print "Valitse toiminto: "
	
    selection = gets.chomp.to_i
    
    cals = vars.calculate(selection, num1, num2)
    
    puts "Tulos on #{cals}"
        
    
    
    


end




