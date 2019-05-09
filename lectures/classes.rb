require "pry"



#-------------------------BINDING.pry EXAMPLES-----------------------
# puts "1) Option 1"
# puts "2) Option 2"

# input = gets.strip.to_i



# case input 
# when 1
#   puts "Option 1 selected"
# when 2
#   puts "Option 2 selected"
# else 
#   puts "Wrong Option"
# end

# binding.pry is a development or production tool
# you can use it to look at your code and test variable and key value pairs

# arr = {
#   name: "Spencer",
#   age: 6,
#   hobbies: "none"
# }
# binding.pry


# -----------------------------CLASSES---------------------------------
# classes can have methods inside but they all need initialize methods


# class Person #remember to capitalize to create a class 
#   attr_accessor :name, :age #remember to use!!!! this lets them be accessable
#   def initialize(name, age)
#     @name = name
#     @age = age             # now using instance variables in an instanciated class
#   end
#   def increase_age(number)
#     @age += number
#   end 
# end

# jack = Person.new("jack-hole", 25) 
# # instanciation!! classes can be instanciated
# binding.pry


# instance methods and class methods

# class Dog
#   attr_accessor :name, :breed

#   def initialize(name, breed)
#     @name = name
#     @breed = breed
#   end

#   # instance method

#   def info
#     puts "#{@name.upcase} is of breed: #{@breed}"
#   end

#   # Class Method (has to be prefaced with self)
#   def self.bark
#     puts "Woof!!!"
#   end 


# end


# turk = Dog.new("turk", "lab")
# # you call class methods on classes
# # Dog.bark # gives "Woof!!!"


# ---------------------------RUBY MODULES -----------------------------

# module Math
#   def add(num_1, num_2)
#     (num_1 + num_2)
#   end 

#   def subtract (num_1, num_2)
#     (num_1 - num_2)
#   end 
# end

# class MathAssignment
#   include Math

#   def first_solution
#     add(10, 50) + subtract(3,10)
#   end
# end

# assignment = MathAssignment.new
# puts assignment.first_solution


# module v class module cannot be instanciated



# -----------------------Inheritance and attributes----------------------------

# classes lower down the heirarchy they all inherit the attributes


# class Parent
#   def use_parent_method
#     puts "This was called from the parent."
#   end
# end 

# class Child < Parent
#   # def use_parent_method  
#   #   puts "I am a child!"
#   #   # super()
#   #   # puts "Here are some more details"
#   # end 
# end 


# p = Parent.new
# c = Child.new

# p.use_parent_method
# c.use_parent_method


# overridable = overrides the parent class stuff
# super is a built in ruby method that calls the inherited class
# attr_accessor command does read and write
# attr_reader  is you can only read it and not re assign it a value
# attr_writer you can only write


# class Mammal
#     attr_accessor :name, :age

#     def initialize(name, age)
#       @name = name
#       @age = age
#     end

#     def breathe
#       puts "inhale and exhale"
#     end
#     def speak
#       raise "Look WHATCHU did?!?!" #this forces an error
#     end
# end

# class Cat < Mammal

#   def initialize(name, age)
#     super(name,age) # it will call the initialized method inside the method class
#   end

#   def speak
#   puts "Meow!"  
  
#   end

# end 

# milo = Cat.new("Milo", 8)
# milo.breathe
# milo.speak


# -----------------------------classes within classes for an application---------
# ------this got dynamic information to fill the info for the app

# class Person
#   attr_accessor :name, :age
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

# end 


# class App
#   attr_accessor :person 

#   def initialize
#     @person = init_person
#   end

#   def init_person  
#     puts "Enter your name:"
#     name = gets.strip.downcase
#     puts "Enter your age:"
#     age = gets.strip.to_i
#     Person.new(name, age)
#   end 

# end 

# app = App.new

class Person
  attr_accessor :first_name, :last_name, :school

  def initialize(first, last, school)
   
    @first_name = first
    @last_name = last
    @school = school

  end

  def greet
      raise "Invalid Role"
  end

end



class Student < Person
  def greet
    puts "\nWelcome #{@first_name} have fun studying at #{school}!"
  end 
end

class Ta < Person
  def greet
    puts "Welcome #{@first_name} have fun doing the teacher's work at #{school}"
  end 
end

class Teacher < Person
  attr_accessor :salary
  def initialize(first_name, last_name, school, salary)
    super(first_name, last_name, school)
    @salary = salary
  end
  def greet
    puts "well,,... #{@first_name} you are going to have fun at #{school}\n\n"
  end 
  
end 

student = Student.new("John", "Doe", "Mountain Valley Jr. High" )
ta = Ta.new("jake", "williams", "Mountain Valley Jr. High")
teacher = Teacher.new("bob", "vance", "Vance Refrigeration", 32000)

student.greet
ta.greet
teacher.greet

puts "You make: #{teacher.salary} as a teacher at #{teacher.school}"






