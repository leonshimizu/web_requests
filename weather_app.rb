require 'http'

puts "Enter any city and then your preferred units of measurement (imperial, metric, standard) and I'll tell you their current forecast:" 

location = gets.chomp
units = gets.chomp

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")

p weather.parse(:json)["name"]
p weather.parse(:json)["weather"][0]["description"]
p weather.parse(:json)["main"]["temp"]
p weather.parse(:json)["main"]["feels_like"]
p weather.parse(:json)["main"]["temp_min"]
p weather.parse(:json)["main"]["temp_max"]
p weather.parse(:json)["main"]["humidity"]
p weather.parse(:json)["wind"]["speed"]











# output: current forecast - name, description, temp, feels like, min temp, max temp, humidity, wind speed