from = 1
to = 100

until from > to do
    if from % 3== 0
        puts "fizz"
    elsif from % 5== 0
        puts "buzz"
    else
        puts from
    end
   
   from +=1
end