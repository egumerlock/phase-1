# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: One string
# Steps: Initialize labels as an array of strings
# Set array size to the number of sides
# Assign a label to each side
# Define a roll method which returns one side

# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Die must have atleast one side.")
    else
    @labels = labels
  end
end

  def sides
    @sides = @labels.size
  end

  def roll
    @labels.sample
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Die must have atleast one side.")
    else
    @labels = labels
  end
end

  def sides
    @sides = @labels.size
  end

  def roll
    @labels.sample
  end
end







# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work? -The main difference is that instead of getting a number from the number of sides, we got a random label from the array sample. The logic didnt change much aside from the fact that I took a random element from the array rather that a random number of sides on the roll method.

What does this exercise teach you about making code that is easily changeable or modifiable? -It teaches me that there is a way to do almost anything you want. To make different die takes a little change in logic.

What new methods did you learn when working on this challenge, if any? -I learn the #sample method for arrays which returns a random element from the array it is called on.

What concepts about classes were you able to solidify in this challenge? -That once instance variables are initialized they are available across methods defined within a class

=end