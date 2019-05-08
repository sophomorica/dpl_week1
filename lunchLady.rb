# # require "pry"

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

@main_dishes = [
  { item: "Hush Gruppies", price: "23 Credits" },
  { item: "Sga-Betty", price: "22 Credits"}
]
@side_dishes = [
  {item: "White Stuff", price: "7 Credits"},
  {item: "Blue Stuff", price: "6 Credits"}

]

def main_menu
  puts "\n-------------------\nYo Choices\n-------------------\n"
  puts "1) Pick Food"
  puts "2) Good Bye"
  # puts "3) Modify"
  # puts "4) Delete Contact"
  # puts "5) Exit"

  input = gets.strip.to_i
  case input
    when 1
      sleep 1
      puts "Here's some grub"
      food_items
    when 2
      exit_application
  
    else 
      puts "enter a valid number you dunce"
      main_menu
  end

end

def food_items
  puts "\n-------------------\nWelcome to barf's beef where you leave full\n Pick a Main Dish-------------------\n"

  @main_dishes.each_with_index do |f,i|
    puts "Slop #{i + 1}) #{f[:item].upcase} it'll cost ya #{f[:price]}\n"

  end
  puts "\n--------------------------------------\n"

  input = gets.strip.to_i

  case input
  when input = @main_dishes.length + 1
    cart(@main_dishes[0])
  when input = @main_dishes.length + 2
    cart(@main_dishes[1])
  end


end










def exit_application
  puts "\n---------------GOOD BYE------------------------\n \n \n"
end

main_menu