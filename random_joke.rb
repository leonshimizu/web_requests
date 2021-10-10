require 'http'

def random_joke

  puts "Welcome to the random joke generator! To continue, type anything. To exit, type 'done':"

  continue = gets.chomp

  while continue.downcase != 'done'

    puts "Please select one of the following categorys:"
    puts "Programming, Pun, Spook, Christmas, or All (Please only 1 selection)"

    choice = gets.chomp

    if choice.downcase == "all"

      joke_link = HTTP.get("https://v2.jokeapi.dev/joke/Programming,Pun,Spooky,Christmas?blacklistFlags=religious").parse(:json)
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

      joke_link = HTTP.get("https://v2.jokeapi.dev/joke/#{choice}?blacklistFlags=religious").parse(:json)
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

# extras:
# make the joke_link variable at the top and reference it so that long line isn't used more than once
# allow the user to choose how many jokes they see at one time
# allow the user to search for a specific topic
# allow the user to choose between the single jokes and two part jokes
# allow the user to select other flags to blacklist 