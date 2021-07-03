
puts "welcome to the rental car facility fee checker. Please enter your age."
age = gets.strip
minimum_rental_age = 21
age = age.to_i

if age < minimum_rental_age
  puts "Sorry, you are too young to rent from this facility."

elsif age > 25
  puts "You do not need to pay any additional fees. Hooray!"

else
  puts "Please enter how many days you would like to rent a car?"
  duration_days = gets.strip.to_i
  # add $20 fee per day
  duration_fee = duration_days * 20

  # ask for location
  puts "Please enter your location. (state)"
  location = gets.strip.upcase

  #puts "location = #{location}"
  location_fee = 0
  case location
  when "MI"
    location_fee = 20
  when "NY"
    location_fee = 25
end

  # prints final totals for customer
  puts "Your total fees are:"
  puts "Length of rental: $#{duration_fee}"
  puts "Location fee: $#{location_fee}"
  puts "Total Fee: $#{duration_fee + location_fee}"
end