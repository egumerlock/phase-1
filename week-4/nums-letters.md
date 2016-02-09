1.What does puts do?
  -Puts is like print except it adds a new line, or a line break after it prints out the content.

2.What is an integer? What is a float?
  -An integer is a whole number; it could be either negative or positive. A float is a number with decimals in it such as 10.3.

3.What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  - When dividing with integers, it is best to remember that it will not give you a float number as a result. Therefore 12 divided by 5 will not give you 2.4. Any division with integers that results in a remainder or a a decimal place will result in the answer being rounded down to the nearest whole integer. Division with floats however will give you more exact answers with decimal places.

  '''ruby
# irb(main):001:0> 24*7*4*12
  => 8064
  '''

  '''ruby
# irb(main):002:0> 60*24*365*10
=> 5256000
  '''
1.How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- In terms of addition, subtraction, and multiplication, Ruby handles the operations just as any normal calculator would. When it comes to division, Ruby would much rather use floats to divide numbers that won't cleanly divide. If using integers that are bound to have remainders, Ruby will round down to the nearest whole integer.
2.What is the difference between integers and floats?
- Integers are whole positive or negative numbers. Floats are numbers with a decimal that are either positive or negative.
3.What is the difference between integer and float division?
- Integers that have a remainder after division will not display the remainder, nor will it have a decimal point. Integer division will round down to the nearest whole integer. A float number will divide it accurately with a decimal point.
4.What are strings? Why and when would you use them?
- A string is a text variable. You would use them for variables such as names or adresses.
5.What are local variables? Why and when would you use them?
- A local variable is one that is used within a certain scope. For example if you want to use a variable within a certain block, you could assign a local variable that would only be called in that block and not outside it. It is useful incase you want to overwrite the variable in the larger scope while using the same variable name.
6.How was this challenge? Did you get a good review of some of the basics?
- This challenge wasn't as difficult as I though it would be. As long as I took a step back and reread the instructions it actually went very smoothly. It was definetly a good review of the basics.

[basic-math](basic-math.rb)
[defining-variables](defining-variables.rb)
[simple-string](simple-string.rb)