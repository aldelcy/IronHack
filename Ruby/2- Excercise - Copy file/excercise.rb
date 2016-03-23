puts "What is the source file?"
source_file = gets.chomp

puts "What is the destination file?"
destination_file = gets.chomp

def copy_command(x, y)
	source_file_contents = IO.read(x)

	IO.write(y, source_file_contents)
end

if File.exist?("#{source_file}")
	puts "Copying contents of #{source_file} into #{destination_file}"
	copy_command(source_file, destination_file)
	puts "Done"

else
	puts "File does not exist"
end