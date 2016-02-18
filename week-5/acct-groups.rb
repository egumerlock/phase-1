=begin
1.There are 59 students in my cohort, which means I can make 11 5 person groups, and 1 4 person group. I will create a variable which takes an array of the 59 students each having a student id, following that I will split up that array into smaller ones. the last array will have 4 people.
=end

def acct_group(number)
  student_id_array = (1..number).to_a

  groups = student_id_array.each_slice(5).to_a

  p groups

end


acct_group(59)

=begin
What was the most interesting and most difficult part of this challenge? - Originally I wanted to have the student id's be "Student" followed by a number but I couldn't find a way to prepend "student" to every elemtent in the array. The most interesting part is if the answer is leave the way it is, it wasn't as complicated as I thought it would be.

Do you feel you are improving in your ability to write pseudocode and break the problem down? -Yes, I was actually going back to my pseudocode to make sure I was on the right track.

Was your approach for automating this task a good solution? What could have made it even better? -Keeping my method, simple and readable. I wanted to randomize the student id's within the arrays but couldn't figure pout how to implement the randomization or where to put it.

What data structure did you decide to store the accountability groups in and why? -I decided to have the student id's that are in the same group in the same array. And all the groups within another array. I felt as if this was the most organized solution.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? - I orignally had each method on a new line until I realized if I am modifying the same variable I can use the same line. That brought my code down to 3 lines.
=end