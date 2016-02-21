# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? Array of scores
# What is the output? (i.e. What should the code return?) A string letter grade.
# What are the steps needed to solve the problem? Add up all elements of array, Divide by number of array elements, if else statement corresponding to the letter grade. Return letter grade.


# 1. Initial Solution
def get_grade(array)
  total = 0
  average = 0
  array.each do |x|
    total += x
  end
  average = total / array.size
    if average < 60
      return "F"
    elsif average < 70
      return "D"
    elsif average < 80
      return "C"
    elsif average < 90
      return "B"
    else
      return "A"
  end
end

# 3. Refactored Solution



# 4. Reflection