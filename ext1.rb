filename = ARGV.first  			# gets filename as cl arg

txt = open(filename+".txt")  	# append ext, open file and store file as txt
puts "You entered "+filename    # print filename
puts txt.read   				# print file content

txt.close()


puts "Enter name of second file"    # ask for another filenamw
file2 = $stdin.gets.chomp			# get filename

txt_again = open(file2+".txt")		# append ext, open file and store file as txt
puts "You entered "+file2			# print filename
puts txt_again.read					# print file content

txt_again.close()
