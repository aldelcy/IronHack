def square(number)
  number * number
end

question = "Find the Square of:\n"
puts question
answer = gets.chomp.to_i



while answer != ""
    puts "Answer: #{square(answer)} \n\n"
    puts question
    answer = gets.chomp.to_i
end
