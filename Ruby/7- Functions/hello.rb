puts "What is your name?"
name = gets.chomp

def say_hello(name)
	puts "Hello #{name}"
end

say_hello("#{name}")