# Pad an Array

# I worked on this challenge with: Noah Schutte.

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, Minimum array size, and a pader.
# What is the output? (i.e. What should the code return?) Array, and padding incase the array doesn't meet the minum size.
# What are the steps needed to solve the problem? Define the methog with the array parameter, minimum size, and padding.


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
    while array.length < min_size
       array.push(value)
    end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
    array_1 = array.clone
    while array_1.length < min_size
      array_1.push(value)
    end
  return array_1
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
    while array.length < min_size
       array.push(value)
    end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
    array_1 = array.clone
    while array_1.length < min_size
      array_1.push(value)
    end
  return array_1
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps? -Yes, we were.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have? -We had an easy time with the destructive method. We got a little jammed up with the non-destructive one because the variables kept refrencing the same object.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?-Our initial destructive solution did pass the test, the non-destructive one did not because our variables refrenced the same object. Ultimately we used the clone method to make a new object to use.
When you refactored, did you find any existing methods in Ruby to clean up your code? No, our research into getting the original could to work was already pretty clean so we decided to leave it.
How readable is your solution? Did you and your pair choose descriptive variable names? - It has minimal lines of code and a variable name that is obvious is a copy.
What is the difference between destructive and non-destructive methods in your own words? - Destructive methods modify the original object while non-destructive ones modify a copy of it.

=end