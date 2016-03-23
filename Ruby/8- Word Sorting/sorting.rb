def  sorting(a)
    a.gsub(/[^a-z ]/i,'').split(' ').sort_by(&:downcase)
end

puts "Insert your sentence:\n"
sentence = gets.chomp

sorting(sentence)