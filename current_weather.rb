require 'http'

weather_lv = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=las%20vegas&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial")

weather_gu = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=guam&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=imperial")

# pp weather_lv.parse(:json)
name1 = weather_lv.parse(:json)["name"]
cTemp1 = weather_lv.parse(:json)["main"]["temp"]
lTemp1 = weather_lv.parse(:json)["main"]["temp_min"]
hTemp1 = weather_lv.parse(:json)["main"]["temp_max"]
fTemp1 = weather_lv.parse(:json)["main"]["feels_like"]

puts "Currently in #{name1} it's #{cTemp1} degrees but it feels like #{fTemp1} and the max for today is #{hTemp1} degreesand then min for today is #{lTemp1} degrees."

# pp weather_gu.parse(:json)
name2 = weather_gu.parse(:json)["name"]
cTemp2 = weather_gu.parse(:json)["main"]["temp"]
lTemp2 = weather_gu.parse(:json)["main"]["temp_min"]
hTemp2 = weather_gu.parse(:json)["main"]["temp_max"]
fTemp2 = weather_gu.parse(:json)["main"]["feels_like"]

puts "Currently in #{name2} it's #{cTemp2} degrees but it feels like #{fTemp2} and the max for today is #{hTemp2} degreesand then min for today is #{lTemp2} degrees."