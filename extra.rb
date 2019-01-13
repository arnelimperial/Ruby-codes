#/usr/bin/env ruby

require 'fileutils'

#def censorize(file1, file2)
file1 = Dir.getwd+"/6-3a_tiedosto.txt"
file2 = Dir.getwd+"/6-3c_tiedosto.txt"

array = []
cleanFile = Dir.getwd+"/6-3b_tiedosto.txt"

File.open(file1, :encoding => 'iso-8859-1').each do |l|
	array << l.chomp
end

array.reject{|r| r.empty?}


file = File.open(file2, :encoding => 'iso-8859-1')
	#Insert file in a string variable to be open as string
contents = file.read
file.close


contents = contents.gsub(array[0], '*****')
contents = contents.gsub(array[1], '*****')
contents= contents.gsub(array[2], '*****')
contents= contents.gsub(array[3], '*****')
contents = contents.gsub(array[4], '*****')
contents = contents.gsub(array[5], '*****')
contents = contents.gsub(array[6], '*****')

#puts contents

#p = contents.force_encoding(Encoding::UTF_8)
#puts p


#puts contents1

#puts dataFile
    #Put the modifie file in a new file

File.open(cleanFile, "a"){|ty| ty.write(contents)}
	


    #Check if file exist and compare the difference with 6-3c_tiedosto.txt
test1 = File.exist? (cleanFile)
test2 = FileUtils.compare_file(file2, cleanFile)

if test1 == true
	puts "Tallennetaan siistitty versio..."
	
end
#Not identical with 6-3c
if test2 == false
	puts "Valmis! Lopetetaan."
end
	
    #return array
    #return dataFile_Clean

#end

#censored_Val = Array []

#file1 = Dir.getwd+"/6-3a_tiedosto.txt"

#censorise_File = censorize(fileName1, fileName2)

#puts censorise_File







