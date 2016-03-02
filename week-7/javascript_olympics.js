// JavaScript Olympics

// I paired Kevin Niu on this challenge.

// This challenge took me 1 hour.


// Warm Up

// Bulk Up
function addWin(array) {
for (var i = 0; i < array.length; i++){
  array[i].win = array[i].name + " won the " + array[i].event + ".";
}
return array;
};

var array = [{name: "Leo", event: "sprint"}, {name: "Kevin", event: "jump"}];
console.log(addWin(array));



// Jumble your words
function jumble(string) {
  var reverseString = string.split("").reverse().join("");
  return reverseString;
};

var string = "Jumble your words!";
console.log(jumble(string));

// 2,4,6,8
function evenNumbers(array){
var evenArray = [];
for (var i=0; i < array.length; i++) {
    if (array[i] % 2 === 0){
    evenArray.push(array[i]);
    }
}
return evenArray;
};

var array = [1, 2, 3, 4, 5, 6, 7, 8];
console.log(evenNumbers(array));
// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Reflection

//What JavaScript knowledge did you solidify in this challenge?
// -How to use constructor functions.
//What are constructor functions?
// -They are simply a different way of creating an obect.
//How are constructors different from Ruby classes (in your research)?
// - Classes are blueprints for similar objects, constructors creat the actual object which don't have any relation to others unless explicitly stated.