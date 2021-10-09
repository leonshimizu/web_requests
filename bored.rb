require 'http'

def find_something_to_do
  
  puts "Hey! If you're here, you must be bored, so let's find you something to do! If you'd like to continue, type anything, if you'd like to go back to doing nothing, type 'nothing':"

  continue = gets.chomp


  bored = HTTP.get("http://www.boredapi.com/api/activity?")

  pp bored.parse(:json)["activity"]
  pp bored.parse(:json)["type"]
  pp bored.parse(:json)["participants"]

end






# attempted to use a recipe API
# url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?timeFrame=day&targetCalories=2300&diet=Intermittent%20Fasting&exclude=shellfish%2C%20olives")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
# request["x-rapidapi-key"] = 'd790e13e0fmsha075308cccf68d1p15ea0bjsn55ff0484aea1'

# response = http.request(request)
# # p response.read_body

# diet = HTTP.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?timeFrame=day&targetCalories=2300&diet=Intermittent%20Fasting&exclude=shellfish%2C%20olives")