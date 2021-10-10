puts "Welcome! Here are all the main applications I've created:"
puts "-" * 50
puts "Random Joke Generator and Current Weather"
puts "Please select one:"

selection = gets.chomp

if selection.downcase == "current weather"
  require_relative 'current_weather.rb'
elsif selection.downcase == "random joke generator"
  require_relative 'random_joke.rb'
end