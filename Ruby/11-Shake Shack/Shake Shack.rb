class MilkShake
    attr_accessor :mlk_name, :base_price, :ingredients
    
  def initialize(mlk_name)
    @mlk_name = mlk_name
    @base_price = 3
    @ingredients = [ ]    
  end
  
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  
  def price_of_milkshake
    total_price_of_milkshake = @base_price

    @ingredients.each do |ingredient|
        total_price_of_milkshake += ingredient.price
    end
  
    total_price_of_milkshake
   end
end

class Ingredient
    attr_reader :name, :price
    
  def initialize(name, price)
    @name = name
    @price = price
  end
end

#Ingredients
    banana = Ingredient.new("Banana", 2)
    chocolate_chips = Ingredient.new("Chocolate Chips", 1)
    strawberry = Ingredient.new("Strawberry", 1)
    plum = Ingredient.new("Plum", 3)
    vanilla = Ingredient.new("Vanilla", 1)

class Shake_Shop
    attr_accessor :final_order
    
    def initialize
        @final_order = [ ]
    end

    def add_milkshake(milkshake)
        @final_order.push(milkshake)
    end
    
    def receipt
        
        fnl_balance = [ ]
        
        for item in final_order
        
            puts "#{item.mlk_name}"
            
            for var in item.ingredients
                print "  #{var.name} ($#{var.price})\n"
                ttl_price = item.base_price += var.price
            end
            
            puts "Total -> $#{ttl_price}\n\n"
            
             fnl_balance.push(ttl_price)
        end
        
        puts "GRAND TOTAL: $#{fnl_balance.inject(0){|sum,x| sum + x }}"
        
    end
    
end



nizars_milkshake = MilkShake.new "Grand Slam"
    #add Ingredients
    nizars_milkshake.add_ingredient(banana)
    nizars_milkshake.add_ingredient(chocolate_chips)

joshs_milkshake = MilkShake.new "King Shaker"
    #add Ingredients
    joshs_milkshake.add_ingredient(strawberry)
    joshs_milkshake.add_ingredient(plum)
    
als_milkshake = MilkShake.new "Cookies & Cream"
    #add Ingredients
    als_milkshake.add_ingredient(vanilla)
    als_milkshake.add_ingredient(chocolate_chips)


#when done, add Milkshake
finalOrder = Shake_Shop.new
finalOrder.add_milkshake(nizars_milkshake)
finalOrder.add_milkshake(joshs_milkshake)
finalOrder.add_milkshake(als_milkshake)

puts "Your Final Order is:\n\n"
finalOrder.receipt