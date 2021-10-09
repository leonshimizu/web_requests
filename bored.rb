require 'http'

def find_something_to_do
  
  puts "Hey! If you're here, you must be bored, so let's find you something to do! If you'd like to continue, type anything, if you'd like to go back to doing nothing, type 'done':"

  continue = gets.chomp

  while continue.downcase != "done"
    puts "Great! So your activity of the day is ..."
    link = HTTP.get("http://www.boredapi.com/api/activity?")
    bored_link = link.parse(:json)

    activity = bored_link["activity"]
    type = bored_link["type"]
    people = bored_link["participants"]
    if people > 1
      puts "#{activity}! This is a #{type} type of activity and requires a minimum of #{people} people."
    else
      puts "#{activity}! This is a #{type} type of activity and requires a minimum of #{people} person."
    end

    puts "If you'd like to get another random activity type anything, if you're happy with that activity, type 'nothing' or 'done'"

    continue = gets.chomp
  end

end

find_something_to_do