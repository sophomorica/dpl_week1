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
        @cart = [
          
        ]

        greet
        food_menu
        side_menu
        view_cart
        main_menu
      end
      def seperator
        puts "(*)" *20
      end
      def greet
        seperator
        puts "\n\nWhat's your name?\n\n"
        seperator
        name = gets.strip.upcase
        seperator

        puts "\n\nHello #{name}\n\n\n"
       
        
      end

      def food_menu
        seperator
        puts "\n\nWhat do you want to eat?\n\n"
        @main_dish.each_with_index do |f,i|
          puts "\n\n#{i + 1}) #{f.item.upcase}-----------------$ #{f.price}\n\n"   
        end
        seperator
        input = gets.strip.to_i
        seperator
        @cart << @main_dish[input - 1]

        puts "\n\nYou chose #{@main_dish[input - 1].item}\n\n"
        
      end
  
      def side_menu
        seperator
        puts "\n\nWhat side dish do you want\n"
        @side_dish.each_with_index do |f,i|
          puts "\n\n#{i + 1}) #{f.item.upcase} $$: #{f.price}\n"   
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
    


        
        seperator

        main_menu

      end 

      def main_menu
        seperator
        puts "Final Decision"
        puts "1) View Cart Again"
        puts "2) Get More Food"
        puts "3) total cost"
        puts "4) Purchase"
        puts "5) Exit"
        input = gets.to_i
        case input
          when 1
            view_cart
            
        
          when 2
            food_menu
            side_menu
            main_menu
          when 3
            purchase_food
          when 4
            purchase_food
          else
            exit
        end
      end
 
      def purchase_food
        seperator
        seperator
        puts "This is the prices of the items"
        seperator
        seperator
        total_cost = @cart.map do |x|
          x.price
      end
      
      puts "#{total_cost.sum}"
        main_menu
      end 
    
  
    
    
  end

  





LunchLady.new