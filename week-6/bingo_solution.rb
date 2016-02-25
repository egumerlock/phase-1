# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( "B", "I", "N", "G", "O") and a number (1-100)
=begin
  1. Set an array equal to ["B", "I", "N", "G", "O"]
  2. Set random letter variable with array[rand(5)], index 0 to 4
  3. Set random number variable with rand(100) + 1 for numbers 1-100
  4. Concatanate them together

=end

# Check the called column for the number called.
=begin
  1. If b check array[x][0] for number
  2. If i check array[x][1] for number
  3. If n check array[x][2] for number
  4. If g check array[x][3] for number
  5. If o check array[x][4] for number

=end

# If the number is in the column, replace with an 'x'
=begin
  1. If array[x][1..4] == number called, #gsub! called number with X

=end

# Display a column to the console
=begin
  1. Puts column with called number replaced with X to screen
=end



# Display the board to the console (prettily)
=begin
  1. Display final bingo board to console.
=end

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def number_picker
    letter_array = ["B", "I", "N", "G", "O"] #sets BINGO letters array
    letter = letter_array.sample
    @num = rand(100) + 1 #picks random number 1-100
    num_letter = "#{letter}" + "#{@num}"
    puts "The number is " + "#{num_letter}"
  end

  def number_checker
    number_picker
      @bingo_board.map! do |a|
      if a.include?(@num)
        a.map! do |b|
        b == @num ? "X" : b
        end
      else
        a
      end
    end
  end


  def board_display
    number_checker.each_slice(1) do |x|
      p x
    end
  end

end

=end
# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def number_picker
    letter_array = ["B", "I", "N", "G", "O"]
    @num = rand(100) + 1
    num_letter = "#{letter_array.sample}" + "#{@num}"
    puts "The number is " + "#{num_letter}"
  end

  def number_checker
    number_picker
      @bingo_board.map! do |a|
      if a.include?(@num)
        a.map! { |b| b == @num ? "X" : b }
      else
        a
      end
    end
  end


  def board_display
    number_checker.each_slice(1) { |x| p x }
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p new_game.board_display

#Reflection

=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
- Pseudocoding whent a lot more in depth in this challenge. I needed to write out every little step so that I could have a road map for my code. I think I'm getting better at pseudocoding because I kept refering back to it in this challenge.

What are the benefits of using a class for this challenge?
-You can use instance variables throughout the methods within the class which make this a lot easier. Also, any new board created with this class will follow the blueprint spelled out by the class.

How can you access coordinates in a nested array?
-By typing in the index of the index of the array. For example, if array = [[a,b],[c,d,e]], if we wanted to acces the e, we'd write array[1][2]. Remember that the indexes start at 0.

What methods did you use to access and modify the array?
-I used map! to iterate and modify the original array. Originally I wanted to use gsub! after map! to substitute the number with an "X", but I found that a ternary operator is shorter and clearer.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
-To format the arrays into a board, I used #each_slice(). What it does is cuts up the array into another array, and the following code block provides instructions on what to do with those new arrays. The arguement that goes into the parentheses is how many elements you want each slice to have.

How did you determine what should be an instance variable versus a local variable?
-If a variable is only needed in one method, it should be local. If it is needed in multiple methods it will be an instance variable.

What do you feel is most improved in your refactored solution?
- It is shorter, cleaner, and easier to read.

=end