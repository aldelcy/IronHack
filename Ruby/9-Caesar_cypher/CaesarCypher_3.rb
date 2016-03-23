def solve_cipher(input, shift)
  
  input_array = input.split('')
  new_message = []
  
  for i in input_array
    
    if i == " "
        new_message.push i
    else 
        new_i = i.ord + shift
        
        if new_i < 97
            new_i = 122+(new_i-97)+1
        elsif new_i > 122 # in case you are Encripting
            new_i = 97+(new_i-122)-1
        end
           
        new_message.push new_i.chr
    end
  end
  
  new_message.join
  
end

puts"What is your Message?"
message = gets.chomp

code = -3

puts "\nHere is the result:"
puts solve_cipher(message, code)
