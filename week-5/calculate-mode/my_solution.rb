# Calculate the mode Pairing Challenge

# I worked on this challenge with Noah Schutte.

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array.
# What is the output? (i.e. What should the code return?) A most frequent used element or element.
# What are the steps needed to solve the problem? Iterate over each element in array and make a hash with the corresponding number of times it showed up.


# 1. Initial Solution
def mode(array)
    mode = array.inject(Hash.new(0)) {|k,v| k[v] +=1; k}
    maximum = mode.values.max
    return mode.select{|k,v| v == maximum}.keys
end



# 3. Refactored Solution
def mode(array)
    mode = array.inject(Hash.new(0)) {|k,v| k[v] +=1; k}
    maximum = mode.values.max
    return mode.select{|k,v| v == maximum}.keys
end



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why? - We implemented an empty array that was pushed into a hash with the element being the key and the number of times it occured as its value. This seemed like the most efficient way to get this done.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? -I thought that this challenge wias a lot harder than the last and took a lot more pseudocode. Ultimately good pseudocode is what pulled us through.
What issues/successes did you run into when translating your pseudocode to code? -Trying to find the names of methods for our pseudocode.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? -We didnt have to iterate. Instead we used a method that pushed everyelement into a hash and then chose the highest valued keys from that hash. It was difficult to find the corrrect wording and methods for it.
=end