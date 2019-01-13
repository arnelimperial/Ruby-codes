#!/usr/bin/env ruby
$VERBOSE = nil

def randomize()
    r = rand(3) + 1

    if r == 1
        return "Torakka"
    end
    if r == 2
        return "Jalka"
    end
    if r == 3
        return "Ydinpommi"
    end
    
    
end 

C1 = 0
C2 = 0
C3 = 0
user1 = 0
user2 = 0
user3 = 0

loop do
    array = ["Torakka", "Jalka", "Ydinpommi"]
     print "1: Torakka 2: Jalka 3: Ydinpommi 4: lopeta\n"
     print "Valitse (1-4):\n"
     
     selection = gets.to_i
     if selection >= 4 || selection <= 0
        exit
     end
     computer = randomize()

     if selection == 1 and computer == array[0]
        print "Valitsitte saman, tasapeli.\n"
     elsif selection == 1 and computer == array[1]
        print "Valitsit torakan, tietokone valitsi jalkan.\n"
        print "Tietokone viotti.\n"
        C1 += 1
        puts "Peli on pelaaja #{user1+user2+user3} : tietokone #{C1+C2+C3}\n"
     elsif selection == 1 and computer == array[2] 
        print "Valitsit torakan, tietokone valitsi ydinpommin.\n"
        print "Voitit!\n"
        user1 += 1
        puts "Peli on pelaaja #{user1+user2+user3} : tietokone #{C1+C2+C3}\n"
     
     elsif selection == 2 and computer == array [1]
        print "Valitsitte saman, tasapeli.\n"
     elsif selection == 2 and computer == array[0]
        print "Valitsit jalkan, tietokone valitsi torakan.\n"
        print "Viotit!"
        user2 += 1
        puts "Peli on pelaaja #{user1+user2+user3} : tietokone #{C1+C2+C3}\n"
     elsif selection == 2 and computer == array[2]
        print "Valitsit jalkan, tietokone valitsi ydinpommin.\n"
        print "Tietokone viotti.\n"
        C2 += 1
        puts "Peli on pelaaja #{user1+user2+user3} : tietokone #{C1+C2+C3}\n"
     elsif selection == 3 and computer == array[2]
        print "Valitsitte saman, tasapeli.\n"
     elsif selection == 3 and computer == array [0]
        print "Valitsit ydinpommin, tietokone valitsi torakan.\n"
        print "Tietokone viotti.\n"
        C3 += 1
        puts "Peli on pelaaja #{user1+user2+user3} : tietokone #{C1+C2+C3}\n"
     elsif selection == 3 and computer == array [1]
        print "Valitsit ydinpommin, tietokone valitsi jalkan.\n"
        print "Viotit!\n"
        user3 += 1
        puts "Peli on pelaaja #{user1+user2+user3} : tietokone #{C1+C2+C3}\n"
         
         
     end

    
     
    
     

    


end