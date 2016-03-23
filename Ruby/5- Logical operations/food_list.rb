food_items = ['grapes', 'apples', 'oragnes', 'kale', 'carrots']

for i in food_items 
    puts "YOU: " + i
    
    if i != "kale"
        puts "MOM: Awesome\n\n"
    else
        print "MOM: Oh god no, take that out \n\n"
        
        puts "MOM: Did you take it out?"
        print "YOU: " + answer = gets.chomp
        
        if answer.downcase == "yes"
           puts "\nMOM: Good, lets continue...\n\n"
           
        elsif answer.downcase == "no"
            print "\n\nMOM: I don't want Kale, Take it out. \nDid you take it out?\n"
            puts "YOU: " + answer = gets.chomp
        end
        
    end
end