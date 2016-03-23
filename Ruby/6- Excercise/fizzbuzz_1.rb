from = 0

while from < 100 do
    
    from = from + 1
    
    if from % 3 == 0
       puts "fizz"
    elsif from % 5 == 0
       puts "buzz"
    else
        puts from
    end

end