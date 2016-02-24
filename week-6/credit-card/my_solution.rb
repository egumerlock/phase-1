# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Lilian Ku.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits of numbers
# Output: true or false boolean
# Steps:
# Put input into an array
# Using numerator, find every other element and double the value from left to right.
# If numbers are double digit, separate them.
# Then sum all the numbers up
# If sum modulus by 10 is == 0 return true, else false.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

def initialize(numbers)
  @numbers = numbers
  if numbers.to_s.size != 16
    raise ArgumentError.new("Number must have sixteen digits")
  end
end

def array_doubler
  @array = @numbers.to_s.split("")
  @array.map! do |x|
    x.to_i
  end

  @array.map! do |x|
    if @array[x] % 2 != 0
      x * 2
    else
      x
    end

  @array.map! do |x|
    if @array[x] > 9
      @array.to_s.split("").flatten!
    end
  end

  @array.map! do |x|
    if x.kind_of(String)
      x.to_i
    end
  end
  return @array
  end
end

def check_card
  sum = 0
  @array.each do |x|
    sum += x
  end
  if sum % 10 == 0 ? true : false
  end
end
end

# Refactored Solution


# Reflection