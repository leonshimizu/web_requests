require 'http'

link = HTTP.get("https://v2.jokeapi.dev/joke/Programming,Pun,Spooky,Christmas")
joke_link = link.parse(:json)

joke = joke_link["joke"]
category = joke_link["category"]
setup = joke_link["setup"]
delivery = joke_link["delivery"]
type = joke_link["type"]

if joke_link["type"] == "single"
  puts "Here's a #{category} joke:"
  puts joke
elsif joke_link["type"] == "twopart"
  puts "Here's a #{category} joke (it's a two part joke):"
  puts setup
  gets.chomp
  puts delivery
end