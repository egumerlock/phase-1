# Class Warfare, Validate a Credit Card Number
require 'pry'

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
    @numbers = numbers.to_s
    @array = @numbers.split("")
    if @numbers.size != 16
      raise ArgumentError.new("Number must have sixteen digits")
    end
    @valid = false
  end

  def convert_array_to_int
    @array.map! do |x|
      x.to_i
    end
  end

  def array_doubler
    @array = @array.map.with_index {|x,idx| idx % 2 == 0 ? x * 2 : x }
  end

  def array_splitter
    @array.map! {|x| x.to_s.split("")}.flatten!
  end

  def array_summer
    @array.inject(:+)
  end

  def check_card
    convert_array_to_int
    array_doubler
    array_splitter
    convert_array_to_int
    sum = array_summer
    @valid = true if sum % 10 == 0
    return @valid
  end
end



# Refactored Solution

class CreditCard

  def initialize(numbers)
    @numbers = numbers.to_s
    @array = @numbers.split("")
    if @numbers.size != 16
      raise ArgumentError.new("Number must have sixteen digits")
    end
    @valid = false
  end

  def convert_array_to_int
    @array.map! do |x|
      x.to_i
    end
  end

  def array_doubler
    @array = @array.map.with_index {|x,idx| idx % 2 == 0 ? x * 2 : x }
  end

  def array_splitter
    @array.map! {|x| x.to_s.split("")}.flatten!
  end

  def array_summer
    @array.inject(:+)
  end

  def check_card
    convert_array_to_int
    array_doubler
    array_splitter
    convert_array_to_int
    sum = array_summer
    @valid = true if sum % 10 == 0
    return @valid
  end
end


# Reflection

=begin
What was the most difficult part of this challenge for you and your pair?
- Trying to figure out the order to go about this challenge.

What new methods did you find to help you when you refactored?
- I learned about inject, to sum up all the elements in the array.

What concepts or learnings were you able to solidify in this challenge?
- How to research new methods. As well as how the order of things are supposed to go.

=end