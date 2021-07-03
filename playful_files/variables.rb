puts "What is your age?"

age = gets.to_i

age_in_dog_years = age * 7

puts "If you are #{age} years old, then you are #{age_in_dog_years} years old in dog years."

if age_in_dog_years > 100
  puts "Oh you dead!"
else if age_in_dog_years == 0 
  puts "Stop playin! you aint' even born yet!"
else 
  puts "You fine boi"
end
end
