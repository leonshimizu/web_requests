require 'http'

def current_weather

  puts "Welcome! This is a weather app, if you'd like to continue, please type anything, if you'd like to cancel, please type 'done':"

  continue = gets.chomp

  while continue.downcase != "done"
    puts "Enter any city and then your preferred units of measurement (imperial, metric, standard) and I'll tell you their current forecast:" 
    
    location = gets.chomp
    units = gets.chomp

    link = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")
    weather_link = link.parse(:json)

    name = weather_link["name"]
    description = weather_link["weather"][0]["description"]
    temperature = weather_link["main"]["temp"]
    feels_like = weather_link["main"]["feels_like"]
    min_temperature = weather_link["main"]["temp_min"]
    max_temperature = weather_link["main"]["temp_max"]
    humidity = weather_link["main"]["humidity"]
    wind_speed = weather_link["wind"]["speed"]

    p "In #{name}, the current temperature in #{units} is #{temperature} degrees but it feels like #{feels_like} degrees. The minimum temperature is #{min_temperature} and the maximum is #{max_temperature}. The description of the weather is #{description} and the humidity is at #{humidity} with a wind speed of #{wind_speed}."

    puts "-" * 50

    puts "If you'd like to continue, type anything, if you'd like to stop, type 'done':"

    continue = gets.chomp
  end

end

current_weather

# create conditional that checks if the location typed in is valid
# create conditional that checks if the unit of measurement is valid