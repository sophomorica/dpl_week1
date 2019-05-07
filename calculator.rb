

def greeting
  puts "---------------\n\nLet's Do some Mathy things!\n\n------------------"
  puts "you can add divide multiply or subtract \n We'll walk through it together"
  puts"---------------\n\n are you ready? y or n \n\n------------------"

  input = gets.strip.downcase
  case input
  when "y"
    start_calc
  when "n"
    exit_application
  end
end

def exit_application
  puts "\n---------------GOOD BYE------------------------\n \n \n"
end

def start_calc
  puts "\nEnter a number"
  input = gets.strip.to_f

  puts "now + - * /"
  modify = gets.strip
  puts "now another number"
  input_2 = gets.strip.to_f

  case modify
    when "+"
    puts "\n#{input} plus #{input_2} equals #{(input + input_2)}"

    when "-"
      puts "\n#{input} minus #{input_2} equals #{(input - input_2)}"
    
    when "*"
      puts "\n#{input} multiplied by #{input_2} equals #{(input * input_2)}"
    
    when "/"
      puts "\n#{input} divided by #{input_2} equals #{(input / input_2)}"
  
    
  end
  puts "\n\n------------------\n\nWant to go again? y or n?\n I can do this all day\n\n------------------"
  input_3 = gets.strip.downcase
  case input_3
    when "y"
      start_calc
    when "n"
      exit_application
  end
end

greeting
