# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input: Number of sides on a die
# Output: A random number on a face of a die
# Steps: Initialize die, make sure there is atleast one face, if not put error. create a random roll method which gives a number between the number of sides.


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Die must have atleast one side.")
    else
    @sides = sides
    return sides
    end
  end

  def sides
      @sides
  end

  def roll
   1 + rand(@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Die must have atleast one side.")
    else
    @sides = sides
    return sides
    end
  end

  def sides
      @sides
  end

  def roll
   1 + rand(@sides)
  end
end





# 4. Reflection
=begin

What is an ArgumentError and why would you use one? -An arguement error is a limitation that one would implement if the program coul ran but the results aren't possible in real life, such as a die with 0 or negative sides.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them? -I implemented the random number generator. At first I had a little trouble because I kept getting a 0 roll answer but then I realized that random number generator starts from 0. Therefore rand(6) is actually numbers 1 to five. Ultimatley I had to add one to that method.

What is a Ruby class? -A ruby class can be thought of as a general despription of similar object. For example any object with x number of numbered sides can be thought of as a die. Therefore instead of creating an object that hard coded to six sides, we create a class that can take all the possibilities.


Why would you use a Ruby class? -Without a ruby class, for every different die that we wanted to test, we'd have to creat it as an object. Instead we can creat a class which will create the obbect based on a parameter we give it.

What is the difference between a local variable and an instance variable? -A local variable is local to the method it is being used.Therefore the same variable can actually be different things in different methods. An instance variable can be used within different methods because it represents the same value at that instant throughout every method.

Where can an instance variable be used? -An instant variable can be used within different methods.

=end