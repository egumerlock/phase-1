# Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? -A positive integer
# What is the output? (i.e. What should the code return?) -A string with a comma after every third digit.
# What are the steps needed to solve the problem? -Convert the input to a string, insert comma after every third character from the right.


# 1. Initial Solution
def separate_comma(number)
  num_array = number.to_s.split("")
  num_trips = num_array.size / 3

  if number.to_s.size <= 3
    return number.to_s
  elsif num_array.size % 3 == 0
    a = -4
    (num_trips.to_i - 1).times do |i|
      num_array.insert(a, ",")
      a -= 4
    end
     num_array.join("")
  else
    a = -4
    num_trips.to_i.times do |i|
      num_array.insert(a, ",")
      a -= 4
    end
     num_array.join("")
  end
end


# 2. Refactored Solution
def separate_comma(number)
  num_array = number.to_s.split("")
  num_trips = num_array.size / 3

  if number.to_s.size <= 3
     number.to_s
  elsif num_array.size % 3 == 0
    a = -4
    (num_trips.to_i - 1).times do |i|
      num_array.insert(a, ",")
      a -= 4
    end
     num_array.join("")
  else
    a = -4
    num_trips.to_i.times do |i|
      num_array.insert(a, ",")
      a -= 4
    end
     num_array.join("")
  end
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider? -First I wanted to convert the input to a string, followed by inputing it into and array. Following that I wanted to put commas after every third number. Since I couldn't do it from the beginning of the array because the placement would be off I thought about reversing the array. Then I found that I could start from the end of the index and work my way back. Doing this would still leave me with a comma in the beginning of the array which I then had to cut off. Finally I converted the finished array to a string.

Was your pseudocode effective in helping you build a successful initial solution? -The pseudocode did provide the necessary logic, however the code became so bulky that I had to keep use trial and error ultimatley to get it to work.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how? - I couldn't seem to find an easier way to do it, I originally thought this challenge was extremely tough and wasn't sure how else I could shorten the code using various methods.

How did you initially iterate through the data structure? -Initially I wanted to use a counter to iterate over the array using a specific number from the beginning, but I noticed that I would need to reverse the array for the commas to be in the proper place. Therefore I used a negative number with continously subracted itself and used the result to itarate over the specific index in the array without having to reverse it.

Do you feel your refactored solution is more readable than your initial solution? Why? -No, I only deleted the return keyword because it would be implicit anyway. I couldn't seem to figure out a different way because I wasn't able to combine the proper methods in the proper order.


=end