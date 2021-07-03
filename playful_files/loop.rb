loop do
  puts "you will see this only once!"
  break
end

puts "and the loop is finished"

counter = 0

loop do
  counter += 1
  puts "Iteration #{counter} of the loop"
  if counter >= 10 
    break
  end
end