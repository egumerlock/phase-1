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

#https://github.com/leokukhar/phase-0/blob/master/week-4/address/my_solution.rb
#https://github.com/leokukhar/phase-0/blob/master/week-4/math/my_solution.rb

=begin

How do you define a local variable?
- A local variable is defined within a method. It is done using the simple assignment character. The = sign.

How do you define a method?
- A method is defined by first using "def" followed by a method name and any arguements or parameters it takes in parantheses. Then comes the code which tells the method what to do with the parameters, followed by an end keyword.

What is the difference between a local variable and a method?
- A local variable is simply an assignment to something. It is declared within the method. A method is a block of code that either takes 0, 1, or multiple parameters and modifies them to with the code described in the method itself.

How do you run a ruby program from the command line?
- Using "ruby" followed by the file name.

How do you run an RSpec file from the command line?
- Using "rspec" followed by the file name.

What was confusing about this material? What made sense?
- I didn't really find any of the material confusing aside from linking ruby files to one another. I had to look that up.

=end