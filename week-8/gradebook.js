/*
Gradebook from Names and Scores
I worked on this challenge with Ryan Dempsey.
This challenge took me 1.56 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.
// Release 1

var gradebook = {};

// Release 2

gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};

//Release 3

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

//Release 4

gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
};

//Release 5

 gradebook.getAverage = function() {};

//Release 6

function average(grades) {
  var total = 0
  for (var i = 0; i < grades.length; i++) {
    total += grades[i];
  };
  var average = total/grades.length;
  return average;
}

//Release 7

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}

console.log(gradebook.getAverage("Susan"))

// __________________________________________
// Refactored Solution

// Release 1

var gradebook = {};

// Release 2

gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};

//Release 3

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

//Release 4

gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
};

//Release 5

 gradebook.getAverage = function() {};

//Release 6

function average(grades) {
  var total = 0
  for (var i = 0; i < grades.length; i++) {
    total += grades[i];
  };
  var average = total/grades.length;
  return average;
}

//Release 7

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}

console.log(gradebook.getAverage("Susan"))

// __________________________________________
// Reflect

//What did you learn about adding functions to objects? -That you can call for functions within functions as long as they are defined.
//How did you iterate over nested arrays in JavaScript? Using bracket notation to access the inner arrays.
//Were there any new methods you were able to incorporate? If so, what were they and how did they work? -There weren't any new methods that I learned in this exercise but it did reinforce previous knowledge.








// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)