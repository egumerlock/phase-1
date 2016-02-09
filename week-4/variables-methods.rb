puts "What is your first name?"
first_name = gets.chomp.capitalize
puts "What is your middle name?"
middle_name = gets.chomp.capitalize
puts "What is your last name?"
last_name = gets.chomp.capitalize

puts "Hello, #{first_name} #{middle_name} #{last_name}."

puts "What is your favorite number?"
favorite_number  = gets.chomp.to_i
better_number = favorite_number + 1
puts "#{favorite_number} is a good number, but I think that #{better_number} is better."

