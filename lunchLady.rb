require "pry"

# # class Person
# #   attr_accessor :name, :credits

# #   def initialize(name, credits)
# #     @name = name
# #     @credits = credits
# #   end

# # end 

# # class MainDish
# #   attr_accessor :name, :price


    
# # end 
  
# # class SideDish < MainDish
# #   attr_accessor :name, :price
# # end 

# # class UserName < SideDish
# #   attr_accessor :name

# #   def initialize(name)
# #     @name = name
# #   end

# # end 

  
  
# class LunchLady 


#   def initialize
#     @main_dishes = [
#       MainDish.new("Goop","20 Credits"),
#       MainDish.new("Sga-betty", "22 Credits")
    
#     ]
#     @side_dishes = [
#       SideDish.new("Creamy White", "7 Credits"),
#       SideDish.new("Creamy Blue", "6 Credits")
#     ]
    
#     # @name = {} 
#     binding.pry
    
#   end
 
#   def greet
#     puts "\n\nWelcome, to Barbara's food: Where everything makes you full\n\n"
#     puts "What's your name"
#     name = gets.strip.downcase
#     puts "Welcome #{name}"
  

  
  
#   end

  
  
# end

# LunchLady.new

# def main_menu
#   puts "\n-------------------\nYo Choices\n-------------------\n"
#   puts "1) See Food Options"
#   puts "2) Buy Food"
#   # puts "3) Wallet"
#   # puts "4) "
#   puts "3) Exit"

#   input = gets.strip.to_i
#   case input
#     when 1
#       see_food
#     when 2
#       buy_food
#     when 3
#       exit_application
#     else
#       puts "please enter a valid option"

  
#   end
# end
# #think about how you would store the information







# def exit_application
#   puts "\n---------------GOOD BYE------------------------\n \n \n"
# end
@cart = []
@main_dishes = [
  { item: "Hush Gruppies", price: "23 Credits" },
  { item: "Sga-Betty", price: "22 Credits"}
]
@side_dishes = [
  {s_item: "White Stuff", price: "7 Credits"},
  {s_item: "Blue Stuff", price: "6 Credits"}

]
def seperator
puts "*" * 30
end 

def main_menu
  puts "\n-------------------\nYo Choices\n-------------------\n"
  seperator
  puts "1) Pick Food"
  puts "2) View Cart"
  puts "3) Good Bye"
  user_selection
end
def user_selection
  
  input = gets.strip.to_i
  case input
  when 1
    puts "Here's some grub"
    sleep 1
    food_items
  when 2
    sleep 1
    seperator
    view_cart    
  when 3
    exit
    
  else 
    puts "enter a valid number you dunce"
    main_menu
  end
  
end
def view_side
  seperator
  puts "SIDE SLOP\n"
  @side_dishes.each_with_index do |f,i|
    puts "slime #{i + 1}) #{f[:s_item].upcase} it'll cost ya #{f[:price]}\n"
  end
  input = gets.to_i
  case input
  when input = @side_dishes.length - 1
    @cart << @side_dishes[0]
  when input = @side_dishes.length  
    @cart << @side_dishes[1]
  end
  main_menu   
end


def food_items
  puts "\n-------------------\n\nMAIN SLOP\n\n-------------------\n"
  
  
  @main_dishes.each_with_index do |f,i|
    puts "Slop #{i + 1}) #{f[:item].upcase} COST: #{f[:price]}\n"
    
  end
  
  
  input = gets.strip.to_i
  
  case input
  when input = @main_dishes.length - 1
    @cart << @main_dishes[0]
  when input = @main_dishes.length  
    @cart << @main_dishes[1]
  end
  
  @cart.each_with_index do |f,i|
    puts "\n\nYou chose #{f[:item]} it costs #{f[:price]}\n that's been added to your cart\n\n"
    seperator
    puts "Now choose a side dish\n\n"
    
    view_side
  end
end


def add_cart
  @cart.each_with_index do |f,i|
    
  end
end


def view_cart
  puts "Garbage bag:"
  @cart.each_with_index do |c,i|
    puts "\n#{c[:item]} #{c[:s_item]}\n#{c[:price]}"
  end
  main_menu

end





def exit_application
  puts "\n---------------GOOD BYE------------------------\n \n \n"
end

main_menu