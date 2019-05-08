require "pry"
@contacts = [
  { name: "Sam", phone: "801-222-4444" },
  { name: "Milo", phone: "801-666-1212",}
]


def modify_contact
  puts "\n-------------------\nWhich Peep needs Changed?\n-------------------\n"
  @contacts.each_with_index do |f,i|
    puts "#{i +1 }) #{f[:name]}"
  end
  puts "\n#{@contacts.length + 1}) or you can exit\n"
  input = gets.strip.to_i
 
  if input == @contacts.length + 1
    main_menu
  else
    puts "\n --------------------\n enter a new name \n \n ---------------------"
    new_name = gets.strip
    puts "\n --------------------\n enter a new number \n \nthe old number is #{@contacts[input -1][:phone]}\n ---------------------"
 
    @contacts[input - 1][:name] = new_name
    new_digits = gets.strip
    @contacts[input -1][:phone] = new_digits
  
  puts "\nyou have changed to '#{new_name}'\n and #{new_digits}"
  viewing_contacts
  main_menu
  end 
end 
def main_menu
  puts "\n-------------------\nYo Choices\n-------------------\n"
  puts "1) Create Contact"
  puts "2) View Contacts"
  puts "3) Modify"
  puts "4) Delete Contact"
  puts "5) Exit"

  input = gets.strip.to_i
  case input
    when 1
      puts "You want to create a new guy"
      create_contact
    when 2
      viewing_contacts
    when 3
      modify_contact  
    when 4
      delete_option
    when 5
      exit_application
    else 
      puts "enter a valid number you dunce"
      main_menu
  end

end

def delete_option
  puts "\n-------------------\nWhich Peep To Delete?\n-------------------\n"
 
  #------------viewing the array-----------------
  @contacts.each_with_index do |f,i|
    puts "#{i +1 }) #{f[:name]}"
  end
  puts "\n#{@contacts.length + 1}) or you can exit\n"
  input = gets.strip.to_i
  if input == @contacts.length + 1
    main_menu
  else
  puts "\n You have Deleted #{@contacts[input - 1][:name]} \n "

  @contacts.delete_at(input - 1)
  
  main_menu
  end
end

def viewing_contacts
  puts "\n-------------------\nHere yo Peeps\n-------------------\n"

  @contacts.each_with_index do |f,i|
    puts "#{i +1 }) Name: #{f[:name]} \n Phone#: #{f[:phone]} "
    puts "\n"
  end

  puts "\n--------------------------------------\n"
  
  puts "#{@contacts.length + 1}) to modify"
  puts "#{@contacts.length + 2}) to delete peeps"
  puts "#{@contacts.length + 3}) to main menu"
  
  
  input = gets.strip.to_i

    case  input 
      when input = @contacts.length + 1
        modify_contact
      when input = @contacts.length + 2
      delete_option
      when input = @contacts.length + 3
        main_menu
      else 
      puts "\n*******************\n\n\n\n\n\n\n\ninvalid option ya dingus\n\n\n\n\n\n**********************"
      puts "\n"
      viewing_contacts
    end 
  
end

def create_contact
  puts "\n-------------------\nYo Peep's Name\n-------------------\n"
  name_input = gets.strip
 
  
  puts "\n-------------------\nYo Peep's Digits\n-------------------\n"

  digit_input = gets.strip
  new_contact = {:name => name_input, :phone => digit_input}
  @contacts << new_contact
  main_menu

end


def exit_application
  puts "\n---------------GOOD BYE------------------------\n \n \n"
end
main_menu
