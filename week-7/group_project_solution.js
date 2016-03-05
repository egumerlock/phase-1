// Person 1 (Ryan Dempsey)

//   Release 1:

//     I've got two groups of numbers, one of odd length, the other of even length.       As a user, I need to create three different functions to do the following:

//       - add each of these groups up
//       - find the average in each of these groups
//       - determine the mid-point for each of these group



// Person 2 (Leo Kukhar)

// Release 2:

// 1. Define a method called add.
// 2. The add method should iterate over every element in the group and add it to a sum counter.
// 3. Return sum.

// 4. Define a second method called average.
// 5. Call the add method inside the newly defined average method.
// 6. Create a local variable called average and set it equal to the sum divided by the length of the group.
// 7. Return average.

// 8. Define a method called mid-point.
// 9. Call the sort method on the groups so that the numbers are sorted from least to greatest.
// 10. Using an if/else statement, if the length of the group is an odd number, return the number which is index[length/2]
// 11. Else return the average of the two middle numbers, (index[length / 2] + index[lenght / 2 + 1]) / 2

// Person 3 (Sean Norton)

//  Release 3:


function sum(array){
  var total = 0;
  for (var i = 0; i < array.length; i++){
    total += array[i];
  }
  return total;
};

function mean(array){
  var avg = sum(array)/array.length;
  return avg;
};

function median(array){
  var count = array.length - 1;
  var sorted = array.sort();
  var half = Math.floor(count/2);
  (array.length % 2 !== 0) ? array[half] : ((array[half] + array[half + 1]) / 2)
};


// TEST CODE

oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)