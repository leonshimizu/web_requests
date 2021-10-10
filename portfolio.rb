puts "Welcome! Here are all the main applications I've created:"
puts "-" * 50
puts "Random Joke Generator, Current Weather, Random Activity Generator, Meal Chooser"
puts "Please select one:"

selection = gets.chomp

if selection.downcase == "current weather"
  require_relative 'weather_app.rb'
elsif selection.downcase == "random joke generator"
  require_relative 'random_joke.rb'
elsif selection.downcase == "random activity generator"
  require_relative 'bored.rb'
elsif selection.downcase == "meal chooser"
  require_relative 'food_copy.rb'
end


# how would I link a file from a different folder (food.rb - in actualize but in an entirely different folder)
# create website to display portfolio
# continue to add to each file to make it more complex and/or easier to use