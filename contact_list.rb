@contacts = ["jack", "jill", "bob", "shirly", "fran"]


def modify_contact
  puts "\n-------------------\nWhich Peep needs Changed?\n-------------------\n"
  @contacts.each_with_index do |f,i|
    puts "#{i +1 }) #{f}"
  end
  input = gets.strip.to_i
 
  
    puts "\n --------------------\n enter a new name \n \n ---------------------"
    new_name = gets.strip
    @contacts[input -1] = new_name
  
  puts "you have changed to '#{new_name}'"
  viewing_contacts

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
    puts "#{i +1 }) #{f}"
  end

  input = gets.strip.to_i
  
  puts "\n You have Deleted #{@contacts[input - 1]} \n "

  @contacts.delete_at(input - 1)
  
  main_menu
end

def viewing_contacts
  puts "\n-------------------\nHere yo Peeps\n-------------------\n"

  @contacts.each_with_index do |f,i|
    puts "#{i +1 }) #{f}"
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
      puts "invalid option ya dingus"
      puts "\n"
      main_menu
    end 
  
end

def create_contact
  puts "\n-------------------\nYo Peeps Name\n-------------------\n"
  name_input = gets.strip
  # puts "Enter the Last Name"
  # last_input = gets.strip
  @contacts << name_input
  main_menu

end



main_menu




