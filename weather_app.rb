require 'http'

# puts "Enter any city and then your preferred units of measurement (imperial, metric, standard) and I'll tell you their current forecast:" 

# location = gets.chomp
# units = gets.chomp

# weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")

# p weather.parse(:json)["name"]
# p weather.parse(:json)["weather"][0]["description"]
# p weather.parse(:json)["main"]["temp"]
# p weather.parse(:json)["main"]["feels_like"]
# p weather.parse(:json)["main"]["temp_min"]
# p weather.parse(:json)["main"]["temp_max"]
# p weather.parse(:json)["main"]["humidity"]
# p weather.parse(:json)["wind"]["speed"]




# output: current forecast - name, description, temp, feels like, min temp, max temp, humidity, wind speed


def current_weather

  puts "Enter any city and then your preferred units of measurement (imperial, metric, standard) and I'll tell you their current forecast:" 

  2.times do
    location = gets.chomp
    units = gets.chomp
    weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")
    name = weather.parse(:json)["name"]
    desc = weather.parse(:json)["weather"][0]["description"]
    temp = weather.parse(:json)["main"]["temp"]
    feels = weather.parse(:json)["main"]["feels_like"]
    min = weather.parse(:json)["main"]["temp_min"]
    max = weather.parse(:json)["main"]["temp_max"]
    humidity = weather.parse(:json)["main"]["humidity"]
    speed = weather.parse(:json)["wind"]["speed"]
    p "In #{name}, the current temperature in #{units} is #{temp} degrees but it feels like #{feels} degrees. The minimum temperature is #{min} and the maximum is #{max}. The description of the weather is #{desc} and the humidity is at #{humidity} with a wind speed of #{speed}."
  end
 
end

current_weather