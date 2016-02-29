
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
console.log("Please type in your favorite food");
console.log("Hey! That's my favorite too!");
// Write your own variable and do something to it.
var number = 2;
var newNumber = number * number;



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var hash = "#"
var counter = 1;
while (counter < 8){
  console.log(hash);
  hash += "#";
  counter = counter +1;
}


// Functions

// Complete the `minimum` exercise.
function min(num1, num2){
  num1 < num2 ? num1 : num2;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name = "Leo",
  age = 24,
  favoriteFoods = ["sushi", "pizza", "pasta"],
  quirk = "I like to rock climb."
};