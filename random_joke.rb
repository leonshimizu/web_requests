require 'http'

def random_joke

  puts "Welcome to the random joke generator! To continue, type anything. To exit, type 'done':"

  continue = gets.chomp

  while continue.downcase != 'done'

    puts "Please select one of the following categorys:"
    puts "Programming, Pun, Spook, Christmas, or All (Please only 1 selection)"

    choice = gets.chomp
    link = HTTP.get("https://v2.jokeapi.dev/joke/#{choice}")
    joke_link = link.parse(:json)


    if choice.downcase == "all"
      link = HTTP.get("https://v2.jokeapi.dev/joke/Programming,Pun,Spooky,Christmas")
      joke_link = link.parse(:json)
      joke = joke_link["joke"]
      category = joke_link["category"]
      setup = joke_link["setup"]
      delivery = joke_link["delivery"]
      type = joke_link["type"]
      if joke_link["type"] == "single"
        puts "-" * 50
        puts "Here's a #{category} joke:"
        puts joke
      elsif joke_link["type"] == "twopart"
        puts "-" * 50
        puts "Here's a #{category} joke (it's a two part joke):"
        puts setup
        gets.chomp
        puts delivery
      end
    else 
      link = HTTP.get("https://v2.jokeapi.dev/joke/#{choice}")
      joke_link = link.parse(:json)
      joke = joke_link["joke"]
      category = joke_link["category"]
      setup = joke_link["setup"]
      delivery = joke_link["delivery"]
      type = joke_link["type"]
      if joke_link["type"] == "single"
        puts "-" * 50
        puts "Here's a #{category} joke:"
        puts joke
      elsif joke_link["type"] == "twopart"
        puts "-" * 50
        puts "Here's a #{category} joke (it's a two part joke):"
        puts setup
        gets.chomp
        puts delivery
      end
    end
    puts "-" * 50
    puts "To generate another joke, type anything. To exit, type 'done':"

    continue = gets.chomp
  end

end

random_joke