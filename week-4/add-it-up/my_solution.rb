# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

#I worked on this challenge with Jon Norstrom.

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# total = sum of all array numbers.

#Input: -An array of numbers.
#Output: -The sum of the numbers.
#Steps to solve the problem. -Iterate over each value in the array and add it on to the next value and so on.


# 1. total initial solution
def total(array)
  sum = 0
    array.each do |x|
    sum += x
    end
    return sum
end


# 3. total refactored solution
def total(array)
   array.inject(0){|sum, x| sum + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: A array of words.
# Output: A sentence.
# Steps to solve the problem. - Take each word, add a space before it, and add it onto the word before that one.


# 5. sentence_maker initial solution
def sentence_maker(array)
    array!.join(" ").capitalize
    array + "."
end


# 6. sentence_maker refactored solution
def sentence_maker(array)
    array.join(" ").capitalize. << "."
end