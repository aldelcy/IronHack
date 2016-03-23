def solve_cipher(input)
  
  input_array = input.split('')
  new_message = []
  
  for i in input_array
    new_i = i.ord - 1
    
    if new_i < 97
        new_i = 122
    elsif new_i > 122 # in case you are Encripting
        new_i = 97
    end
    
    new_message.push new_i.chr
  end
  
  new_message.join
  
end

puts"What is your Message?"
message = gets.chomp

puts "\nHere is the result:"
puts solve_cipher(message)
