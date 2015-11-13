filename = ARGV.first  			# gets filename as cl arg

puts "you have entered #{filename}"
puts "To stop reading pres CTRL-C"

$stdin.gets

puts "Opening the file..." 
txt = open(filename+".txt",'w')  	# append ext, open file and store file as txt

puts "Trauncating file.. Bye"
txt.trauncate(0)

puts "Now i am going to ask you fron 3 lines"

print "Line 1"
line1 = $stdin.gets.chomp

print "Line 2"
line2 = $stdin.gets.chomp

print "Line 3"
l3 = $stdin.gets.chomp


puts "I am going to write these files"


txt.write(line1)
txt.write("/n")

txt.write(line2)                                                                 │                                                                                   
txt.write("/n")  

txt.write(l3)
txt.write("/n")


puts "And finally we close "

txt.close()


