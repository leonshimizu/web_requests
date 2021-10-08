require 'http'

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=las%20vegas&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial")

# pp weather.parse(:json)
name = weather.parse(:json)["name"]
cTemp = weather.parse(:json)["main"]["temp"]
lTemp = weather.parse(:json)["main"]["temp_min"]
hTemp = weather.parse(:json)["main"]["temp_max"]

puts "Currently in #{name} it's #{cTemp} degrees but the max for today is #{hTemp} degreesand then min for today is #{lTemp} degrees. "