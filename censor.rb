#/usr/bin/env ruby

require 'fileutils'

def censorize(file1, file2)
    array = []
    cleanFile = Dir.getwd+"/6-3b_tiedosto.txt"


    File.open(file1, :encoding => 'iso-8859-1').each do |l|
        #chomp to removes carriage return and white spaces
        array << l.chomp
        #p = array.reject{|r| r.empty?}
        array.delete("")
        

    end
    

    


    #remove all empty array elements
    
    
     
    fileHandle = File.open(file2, :encoding => 'iso-8859-1')
    #Insert the contents of the file into a variable to be read as string var.
    dataFile = fileHandle.read
    #close file 
    fileHandle.close
    

    #Compare substring and delete/replace when substring in the file is identical to the array
    replace = '*****'
    dataFile = dataFile.gsub(array[0], replace)
    dataFile = dataFile.gsub(array[1], replace)
    dataFile = dataFile.gsub(array[2], replace)
    dataFile = dataFile.gsub(array[3], replace)
    dataFile = dataFile.gsub(array[4], replace)
    dataFile = dataFile.gsub(array[5], replace)
    dataFile = dataFile.gsub(array[6], replace)
    
    File.open(cleanFile, "a"){|type| type.write(dataFile)}
    test1 = File.exist? (cleanFile)
    test2 = FileUtils.compare_file(file2, cleanFile)
    
    if test1 == true
        puts "Tallennetaan siistitty versio..."
    end
    
    #Not identical with 6-3c
    if test2 == false
        puts "Valmis! Lopetetaan."
    end

end




#censored_Val = Array []
fileName1 = Dir.getwd+"/6-3a_tiedosto.txt"
fileName2 = Dir.getwd+"/6-3c_tiedosto.txt"



puts censorize(fileName1, fileName2)



#puts censorise_File









