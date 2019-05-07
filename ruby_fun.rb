#  x = 1+25
#  y = "Hello " +"World"

#  foo = "I am a regular variable" 
# #  regular variables have scoping issues.
#  Foo = "I am a constant"
# #  global scope
#  @foo = "I am an instance variable"

#  def print_foo(arg1)
#   puts Foo 
#   puts arg1
#   puts @foo
#  end

#  print_foo(foo)

# one = 1
# two = 2
# three = 3

# def print_nums(uno, dos, tres)
#   puts uno
#   puts dos
#   puts tres
# end

# print_nums(one, two, three)


# puts 'hello wolrd'
# puts "hello world"

# #using string interpolation you have to use double quotes

# greeting = 'hello'
# name = 'world'

# puts greeting + " " + name 
# #this is a concatination
# puts "#{greeting}  Big #{name}!"
# #this is a string interpolation

# name = 'patrick'
# puts "Hello #{name} How are you today?"

# planet = "Earth"

# def hello_world(arg1)
#   puts "Hello #{arg1}"
# end

# hello_world(planet)

#Booleans=---------------------------------------------
# x = true

# if x == true
#   puts "It's true"
# else 
#   puts "It's a lie"

# end

# num = 10

# if num <=0
#   puts "The number is \n too low"
# elsif num >3 && num <7
#   puts "The number \n is \n just right"
# else 
#   puts "The \nnumber\n is \n too\n high"
# end
# puts num

# if you have more than one eslif statement use a case statement

# number = 3

# case number
#   when 1,2 
#     puts number
#   when 3
#     puts "Trecias"
#   else 
#     puts "Too high"

# end


# Another conditional called ternary operators-----------------------------------
# modulous two is a good way to check if a number is even or odd
# if num % 2 == 0
#   puts "Even"
# else 
#   puts "Odd"
# end

# a = num %2 == 0? "Even" : "Odd" 
# This is a ternary because they are all on one line.

# let's talk about arrays my friend--------------------------------------------------
# arrays are a way to have a bunch of data stored in a container

# number_array = [1, 2, 3, 4, 5]

# number_array.push(6)
# #long way to do a push
# number_array << 6
# #this is the shorthand
# # number_array.push(6) == number_array << 6

fruit = ["orange", "apple", "banana", "mango", "plum", "pear"]



# How would you loop through arrays
# this is the same as a forEach helper method in javascript

# fruit.each do |f| 
#   puts f
# end

fruit.each_with_index do |f,i|
  puts "#{i +1 }) #{f}"
end
puts "What fruit do you want"

user_fruit = gets.strip.to_i - 1
puts "You selected #{fruit[user_fruit]}"
#make sure you sanatize the input

#getting input from the user. Application building for the user


# looping through random numbers

# (0..5).each do |num|
#   puts num

# end

# 5.times do
#   puts "hey"

# end






