# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: A guess as an integer.
# Output: :high if the guess is larger than the answer, :low if the guess is lower than the answer, :correct if the guess is correct. Also true if the game was solved and false if it was not.
# Steps:
# Initialize answer variable
# Create a guess method which takes a guess parameter as an integer. If integer is lower than answer, return :lower, if higher, return :higher, if correct, return :correct
# Creat a solved? method which returns true if the last guess was correct and false otherwise

# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess > @answer
      return :high
    else
      return :low
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end

=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess > @answer
      return :high
    else
      return :low
    end
  end

  def solved?
     @guess == @answer ? true : false
  end
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
- They can change outputs in other methods, which is what happens in the real world. For example in the real world if a = b then c or if a = c then d. Instance variables allow the traversal of other methods in order to make sure that it gets the same output from each method as it would it the real world.

When should you use instance variables? What do they do for you?
- Instance variables should be used when the same variable value is needed throughout different methods. They allow us to broaden our variable scope.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? I had no problem with flow control on this challenge. - Flow control simply put is the construct that if a situation equals this, then the program proceeds to do this, otherwise if it equals that, the programs proceeds to do that.

Why do you think this code requires you to return symbols? What are the benefits of using symbols? -Similar simbols have the same object id which takes up less memory in the program ultimately making it run faster. Symbols are also easier to read. The code requires us to use symbols because it ultimately ends up cleaner looking and more efficient.

=end