# # arr = Array.new #=> []
# # arr = Array.new(5) #=>[nil, nil, nil, nil, nil]
# # arr = []
# # #        [0]        [1]     [2]
# # arr = ["orange", "apple", "pear"]
# # arr = [1, 'a', Array.new(5), {}, (1+2)]

# # arr.each_with_index do |f, i|
# #  puts "#{i+1}. #{f}"
# # end 

# arr = [ "B", "C"]
# arr << "D"
# # puts arr # => A, B, C, D 
# #shovel method adds an item to the end of the array

# arr.unshift("A") #=> adds to the beginning

# arr.pop

# arr.push("D")


# #pop-takes it off the end; shift removes an item from the beginning, unshift..puts an item in the front of the array


# arr.insert(4,"Z") #this adds "z" to the 4th position of the array
# # puts arr

# # arr = [1,2,3]
# # puts arr.rotate

# # arr = [5.7,5, 6.3,6,900,-6] #=> puts them in order; it sorts floats and integers and letters
# # puts arr.sort
# # puts arr.max

# # delete_at(user_input - 1)

# arr = ["a", "b", "c"]
# puts arr.join(",")

# words = "This is a bunch of words"
# # print words.split
# #join will turn it back into a string
# # then you can loop through the array and then loop through it to count the words or count how many words are repaeated...modern find on a word document


# arr.length # gives you the length or how large
# arr.clone #will give you a clone and store it into another variable. new_arr = arr.clone


# #------------------------------HASHES---------------------------

# array = ["apple", "orange", "pear"]
# person = { first_name: "Patrick", last_name: "Lamoureux", age: 8, hair_color: blue, }

# puts person[:first_name]
# puts person[:hair_color]

# person = {
#  first_name: "Abe",
#  last_name: "Lincoln",
#  age: 206,
#  awesome_beard?: true,
#  quotes: ["Whatever you are, be a good one","Don’t believe everything you read on the internet"]
# }

# person[:first_name] = "Abraham"
# puts person[:first_name]

# people = [
#   { first_name: "Spencer", last_name: "Richards" },
#   { first_name: "Cosmo", last_name: "Kramer", age: 35 },
#   { first_name: "Jerry", last_name: "Seinfeld" }
#  ]
# #  puts "#{people.first[:first_name]} is the best"

# languages = { 
#   language: {
#    ruby: { 
#      conceived: 1993,
#      awesomeness: 9000
#    },
#    java: {
#      conceived: 1991,
#      awesomeness: false
#    }
#   }
# }
# puts languages[:language][:java][:awesomeness] = -28000
# puts languages[:language][:java][:awesomeness]

# heroes = {hero: "Batman", wealth: "$$$", suit_color: "Black"}

# puts heroes.values or puts heroes.keys you get the values or the keys
# heroes.delete[:suit_color]
# puts heroes.keys
# puts heroes.key? :hero

# condiments = {ketchup: "Gross", mayo: "good", mustard: "awesome" }

# condiments.each do |key, value|
#   puts "Condiment: #{key} is #{value}"
# end

people = [
  { first_name: "Spencer", last_name: "Richards" },
  { first_name: "Cosmo", last_name: "Kramer", age: 35 },
  { first_name: "Jerry", last_name: "Seinfeld" }
 ]

 people.each_with_index do |person, i|
  puts "#{i + 1}. #{person[:first_name]} #{person[:last_name]}"
 end 