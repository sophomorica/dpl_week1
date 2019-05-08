require "pry"

class MainDish
  attr_accessor :name, :price


    
end 
  
class SideDish
  attr_accessor :name, :price
end 
  
  
class LunchLady
  puts "what do you wanna eat"
  # display garbage
  def initialize
    @main_dishes = []
    @side_dishes = []
    @user_name = name 
    # money
  end
  
  
end

LunchLady.new

def main_menu
  puts "\n-------------------\nYo Choices\n-------------------\n"
  puts "1) See Food Options"
  puts "2) Buy Food"
  # puts "3) Wallet"
  # puts "4) "
  puts "3) Exit"

  input = gets.strip.to_i
  case input
    when 1
      see_food
    when 2
      buy_food
    when 3
      exit_application
    else
      puts "please enter a valid option"

  
  end
end
#think about how you would store the information







def exit_application
  puts "\n---------------GOOD BYE------------------------\n \n \n"
end

goop = MainDish.new("Goop","20 Credits")

sgabetty = MainDish.new("Sga-betty", "22 Credits")

creamyWhite = SideDish.new("Creamy White", "7 Credits")

creamyBlue = SideDish.new("Creamy Blue", "6 Credits")