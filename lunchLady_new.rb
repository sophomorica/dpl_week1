require "pry"


class MainDish
  attr_accessor :item, :price
  def initialize(item, price)
    @item = item
    @price = price

  end

end

class SideDish < MainDish
end 

class LunchLady
  def initialize
    @main_dish = [
    MainDish.new("Steak", 20),
    MainDish.new("Salad", 17)
    ]
    @side_dish = [
    SideDish.new("grapes", 1),
    SideDish.new("apples", 2)

    ]
    @cart = []
    greet
    food_menu
    side_menu
    view_cart
    main_menu
  end
  def seperator
    puts "*" *20
  end
  def greet
    seperator
    puts "What's your name?\n\n"
    seperator
    name = gets.strip
    puts "Hello #{name}\n\n\n"
    puts "what do you want?\n\n"
    
  end

  
  def food_menu
    seperator
    @main_dish.each_with_index do |f,i|
      puts "item: #{i + 1}) #{f.item.upcase} $$: #{f.price}\n"   
    end

    input = gets.strip.to_i
    seperator
    @cart << @main_dish[input - 1]

    puts "You chose #{@main_dish[input - 1].item}\n"
    
  end

  def side_menu
    seperator
    @side_dish.each_with_index do |f,i|
      puts "item: #{i + 1}) #{f.item.upcase} $$: #{f.price}\n"   
    end

    input = gets.strip.to_i
    @cart << @side_dish[input - 1]

    puts "You chose\n #{@side_dish[input - 1].item}"
    
  end
  def view_cart
    seperator
    puts "You got: "
   

    @cart.each_with_index do |f,i|
      puts "#{f.item}"

    end
    # puts "Cost: "
    # puts "#{@carts.price.sum}"


    
    seperator

    main_menu

  end 

  def main_menu
    seperator
    puts "Final Decision"
    puts "1) View Cart Again"
    puts "2) Get More Food"
    puts "3) Purchase"
    puts "4) Exit"
    input = gets.to_i
    case input
      when 1
        view_cart
        exit
    
      when 2
        food_menu
        side_menu
        main_menu
      when 3
        purchase_food
      when 4
        exit
      else
        exit
    end
  end


end



LunchLady.new