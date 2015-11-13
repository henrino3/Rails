input_file = ARGV.first

def print_all(f)
      puts f.read
end


def rewind (f)
    f.seek(0)
end

def print_a_line(line_count, f)
      puts "#{line_count}, #{f.gets.chomp}"
end

end

puts 'calling the function now'

current_file = open(input_file)

print_a_line(current_file)

#rewind current_file 

puts 'printed'
