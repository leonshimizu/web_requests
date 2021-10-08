require 'http'

list = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json")

sf_food_truck1 = list.parse(:json)[0]["applicant"]

p "The first food truck in the list of SF Food Trucks is #{sf_food_truck1}."