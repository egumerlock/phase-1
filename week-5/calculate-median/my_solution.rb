# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) the median.
# What are the steps needed to solve the problem? Sort the array. Divide by two. If even array add two middle numbers and devide by two.


# 1. Initial Solution
def median(array)
  array.sort! do |x,y|
    x <=> y
  end
  if
    array.length % 2 == 1 then
    med = array.length / 2 + 1
      if array.include?(String)
        return array.index(med + 1).to_s
      else
        return array.index(med + 1)
      end

  else
    med_1 = (array.length / 2 - 2)
    med_2 = (array.length / 2)
      if array.include?(String)
        final_med = (( array[med_1]+ array[med_2]) / 2)
      else
        final_med = (( array[med_1].to_f + array[med_2].to_f) / 2)
      end
    return final_med
  end
end

p median([4, 4, 5, 5, 6, 6, 6, 7])
# 3. Refactored Solution



# 4. Reflection