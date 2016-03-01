// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kevin Niu

// Pseudocode
// Input: integer
// Output: Comma seperated string
// Convert the integer to string
// Reverse the string
// Seperate into  groups of three
// Join with comma in between every group of three


// Initial Solution
function separateComma(integer) {
  var inputString = integer.toString().split("").reverse();
  for (var i = 3; i < inputString.length; i += 4) {
    inputString.splice(i, 0, ",");
  };
  var output = inputString.reverse().join("");
  console.log(output)
};



// Refactored Solution
function separateComma(integer) {
  var inputString = integer.toString().split("").reverse();
  for (var i = 3; i < inputString.length; i += 4) {
    inputString.splice(i, 0, ",");
  };
  var output = inputString.reverse().join("");
  console.log(output)
};



// Your Own Tests (OPTIONAL)




// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// - The logic was the same, the syntax was different. I think thats where my partener and I had the most trouble, finding out the proper syntax for things.
//What did you learn about iterating over arrays in JavaScript?
// - The syntax is a little different for iteration, it's a little more verbose, however very similar.
//What was different about solving this problem in JavaScript?
// - Just the layout and order of the methods. For one, you cannot use a #reverse method on a string. It can only be done on an array.
//What built-in methods did you find to incorporate in your refactored solution?
//Our refactored solution was the same as our initial solution becasue our intial solution used mostly built in methods. We used splice to joing the array with commas.