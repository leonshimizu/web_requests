puts "Hello! I see you're having a hard time deciding on what to eat, let me help you..."
puts "List some different styles of food, one at a time and when you're finished, please type in 'done':"
choose = []
while true
  food = gets.chomp
  if food.downcase == "done"
    break
  else
    choose << food
    puts "Are there any other styles of food you'd like for me to consider???"
  end 
end
puts "Intersting... So, today you guys will be eating #{choose.sample}"