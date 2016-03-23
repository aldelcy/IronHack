def taste(food)
  if food.downcase == "bacon"
    puts "Yummy!!! BACON!!!"
  elsif food.downcase == "spinach"
  	puts "Meh! I'll pass"
  else
  	puts "Can I have Bacon on the side?"
  end
  	
end

puts "What do you have?"

food_answer = gets.chomp

taste food_answer