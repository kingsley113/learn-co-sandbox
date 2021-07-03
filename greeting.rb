puts "Hello, what is your name?"
user_name = gets
puts "What is your favorite food?"
favorite_food = gets

def greeting(name, favorite_food)
  puts "Welcome, #{name}, we have prepared some #{favorite_food} for you!"
end

greeting(user_name, favorite_food)