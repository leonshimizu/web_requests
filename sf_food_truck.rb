require 'http'

food_trucks = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json")

name1 = food_trucks.parse(:json)[0]["applicant"]
open1 = food_trucks.parse(:json)[0]["start24"]

p "The first food truck in the list of SF Food Trucks is #{name1} and they open at #{open1}."