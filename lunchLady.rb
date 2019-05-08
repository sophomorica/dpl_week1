require "pry"

class MainDish
  attr_accessor :name, :price


    
end 
  
class SideDish
  attr_accessor :name, :price
end 
  
  
class LunchLady
    
    def initialize
      @main_dishes = []
      # user name
      # money
    end
    

end

LunchLady.new

#think about how you would store the information

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






def exit_application
  puts "\n---------------GOOD BYE------------------------\n \n \n"
end