puts "Welcome! Here are all the main applications I've created:"
puts "-" * 50
puts "Random Joke Generator, Current Weather, Random Activity Generator"
puts "Please select one:"

selection = gets.chomp

if selection.downcase == "current weather"
  require_relative 'weather_app.rb'
elsif selection.downcase == "random joke generator"
  require_relative 'random_joke.rb'
elsif selection.downcase == "random activity generator"
  require_relative 'bored.rb'
end