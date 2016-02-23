#Attr Methods

# I worked on this challenge by myself.,

# I spent [1] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name

  def initialize
    @name = "Leo"
  end
end


class Greetings
  attr_reader :name

  def initialize
    @name = NameData.new
  end

  def greeting
    puts "Hello, #{@name}, pleased to meet you."
  end
end

hello = Greetings.new
hello.greeting

# Reflection

=begin
Release 1
What are these methods doing?
- These methods are taking new data as their parameters and overwriting the existing data, therefore updating it.

How are they modifying or returning the value of instance variables?
- They are over writing the previous values with their values.

Release 2
What changed between the last release and this release?
- The method #what_is_age was commented out.

What was replaced?
- An attribute reader for the age instance variable

Is this code simpler than the last?
- Yes it's shorter and more readable.

Release 3
What changed between the last release and this release?
- There is also a writer attribute for age.

What was replaced?
- The #new_age method was replaced with the writer attribute for age.

Is this code simpler than the last?
- Yes, even shorter than the last one.

Release 6
What is a reader method?
- It allows the user to read what is inside a varible in a method.

What is a writer method?
- It allows the user to overwrite what is inside a variable in a method.

What do the attr methods do for you?
- They are a way to interact with the inner workings of a program.

Should you always use an accessor to cover your bases? Why or why not?
- No, you don't want to grant access to someone to a variable that you do not want to be either read or written over. Therefore if you need either read or write specifically, it is better to use the specific attr. It also heightens security.

What is confusing to you about these methods?
- Nothing really, everything seemed very straight foward.
=end