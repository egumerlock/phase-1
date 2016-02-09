# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1.25 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# - errors.rb
# 2. What is the line number where the error occurs?
# - Line number 170
# 3. What is the type of error message?
# - Syntax error, unexpeced end - of - input expecting keyword "end"
# 4. What additional information does the interpreter provide about this type of error?
# - The suggested place the code fix shoul go.
# 5. Where is the error in the code?
# - Its actually on line 17, we didn't close the method with an end keyword.
# 6. Why did the interpreter give you this error?
# - It wants you to close the method, but since there are more methods in front of it it isn't sure whether the method is just lines 13 -17 or the whole file.

# --- error -------------------------------------------------------

south_park = "good"

# 1. What is the line number where the error occurs?
# - Line 35
# 2. What is the type of error message?
# - Undefined local variable or method.
# 3. What additional information does the interpreter provide about this type of error?
# - That it is a name error,
# 4. Where is the error in the code?
# - South_park is not a declared method that can be called upon nor is it assigned a variable.
# 5. Why did the interpreter give you this error?
# It's awaiting a method or variable declaration.

# --- error -------------------------------------------------------

def cartman(name)
  puts "Hello " + name + "."
end
# 1. What is the line number where the error occurs?
# - Line 50
# 2. What is the type of error message?
# - Undefined method.
# 3. What additional information does the interpreter provide about this type of error?
# - NoMethodError
# 4. Where is the error in the code?
# - If this is a method that expects something as a parameter, It needs to be declared with def and end.
# 5. Why did the interpreter give you this error?
# - It is awaiting a method declaration.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# - Line 66
# 2. What is the type of error message?
# - Wrong number of arguements, 1 for 0.
# 3. What additional information does the interpreter provide about this type of error?
# - From line number 70.
# 4. Where is the error in the code?
# - It is either in the declaration of the method, which takes no arguements and needs to be changed to take one, or on line 70 where the method is being called with an arguement that it cannot accept.
# 5. Why did the interpreter give you this error?
# - The method cartmans_phrase does not accept arguements and yet in line 70 we pass it one.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("O dang!")

# 1. What is the line number where the error occurs?
# - Line 85
# 2. What is the type of error message?
# - Wrong number of arguements, 0 for 1.
# 3. What additional information does the interpreter provide about this type of error?
# - Where the follow up error is
# 4. Where is the error in the code?
# - It's either on line 85, where we declared a method that takes an arguement which shouldn't, or on line 89 where we call on the method with no arguement when it needs one.
# 5. Why did the interpreter give you this error?
# - It is expecting an arguement for the method being called.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Leo')

# 1. What is the line number where the error occurs?
# - Line 106
# 2. What is the type of error message?
# - Wrong number of areguments (1 for 2).
# 3. What additional information does the interpreter provide about this type of error?
# - Gives you the relevant line where the code has the same error.
# 4. Where is the error in the code?
# - Either we need one argument in the method declaration on line 106, or we need two arguments when calling on the method in line 110
# 5. Why did the interpreter give you this error?
# - It needs a second argument passed into the method.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# - Line 125
# 2. What is the type of error message?
# - String cannot be coerced into fixed number
# 3. What additional information does the interpreter provide about this type of error?
# - That it is a type error.
# 4. Where is the error in the code?
# - The program cannot multiply 5 by "Respect my Authoritay!" times.
# 5. Why did the interpreter give you this error?
# - It cannot multiply something by a word.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# - Line 140
# 2. What is the type of error message?
# - (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# - Nothing else.
# 4. Where is the error in the code?
# - Either the division sign, or the denominator.
# 5. Why did the interpreter give you this error?
# - It cannot divide by zero.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# - Line 156
# 2. What is the type of error message?
# - Cannot load the specified file.
# 3. What additional information does the interpreter provide about this type of error?
# - The path to the file that is trying to be loaded.
# 4. Where is the error in the code?
# - Either in the path to the file if it exists, or the existance of the file itself.
# 5. Why did the interpreter give you this error?
# - It cannot find the specified file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# - None of them were really to difficult if you know what to look for when you see them, some errors give mulple lines so you have to be careful with those.
# How did you figure out what the issue with the error was?
# - By looking at the specified error line and what the error was.
# Were you able to determine why each error message happened based on the code?
# Yes, I was.
# When you encounter errors in your future code, what process will you follow to help you debug?
# - Navigate to the specified error line, and read the error message and figure out a way to fix it.