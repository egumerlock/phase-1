// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: The character is stuck in a room with no light, using his or her memory, he or she must reach the exit, there are monsters in the dark. If you step into the same spot as them its game over.
// Overall mission: Escape the room
// Goals: Use memory to find the exit.
// Characters: The main character, monsters.
// Objects: Main character, Monsters, door
// Functions: moveUp, moveDown, moveLeft, moveRight

// Pseudocode
// Create a player object with initial position of X: 0 and Y: 0
// Give player methods to move up, down, left, right.
// Create a door object with a position of X: 30 and Y: 25
// Create a monster1 object with a position of X: -10 and Y: 5
// Create a monster2 object with a position of X: 5 and Y: -10
// Move player, if spot is open, tell player where he or she is. If monster on same spot, game over. If door is on same spot, you win.
//

// Initial Code
// console.log("You wake up in a dark room and you cannot see a thing. You hear monster noises. You need to find your way out, without meeting the terrible monsters. Remember how many steps you take, incase you have to do this again.");

// var door = {
//   posX: 30,
//   posY: 25
// };

// var monster1 = {
//   posX: -10,
//   posY: -5
// };

// var monster2 = {
//   posX: -5,
//   posY: -10
// };

// var player = {
//   posX: 0,
//   posY: 0,

//   move: function (direction) {
//     if (direction === "up") {
//       player.posY += 5;}

//     else if (direction === "down") {
//       player.posY -= 5;}

//     else if (direction === "left") {
//       player.posX -= 5;}

//     else if (direction === "right") {
//       player.posX += 5;}

//   if (player.posX === monster1.posX && player.posY === monster1.posY){
//     console.log("One of the monsters got you in the dark!!");
//   }
//   else if (player.posX === monster2.posX && player.posY === monster2.posY){
//     console.log("One of the monsters got you in the dark!!");
//   }
//   else if (player.posX === door.posX && player.posY === door.posY){
//     console.log("You reached the door. You open it and bright light fills the once dark room, killing all the monsters inside.");
//   }
//   else {
//     console.log("You're safe for now, you can't see anything. Do you remember how many steps you took?");
//     }
//   }
// };

// player.move("right")
// player.move("right")
// player.move("right")
// player.move("right")
// player.move("right")
// player.move("right")
// player.move("up")
// player.move("up")
// player.move("up")
// player.move("up")
// player.move("up")



// Refactored Code
console.log("You wake up in a dark room and you cannot see a thing. You hear monster noises. You need to find your way out, without meeting the terrible monsters. Remember how many steps you take, incase you have to do this again.");

var door = {
  posX: 30,
  posY: 25
};

var monster1 = {
  posX: -10,
  posY: -5
};

var monster2 = {
  posX: -5,
  posY: -10
};

var player = {
  posX: 0,
  posY: 0,

  move: function (direction) {
    if (direction === "up") {
      player.posY += 5;}

    else if (direction === "down") {
      player.posY -= 5;}

    else if (direction === "left") {
      player.posX -= 5;}

    else if (direction === "right") {
      player.posX += 5;}

  if (player.posX === monster1.posX && player.posY === monster1.posY){
    console.log("One of the monsters got you in the dark!!");
  }
  else if (player.posX === monster2.posX && player.posY === monster2.posY){
    console.log("One of the monsters got you in the dark!!");
  }
  else if (player.posX === door.posX && player.posY === door.posY){
    console.log("You reached the door. You open it and bright light fills the once dark room, killing all the monsters inside.");
  }
  else {
    console.log("You're safe for now, you can't see anything. Do you remember how many steps you took?");
    }
  }
};

player.move("right")
player.move("right")
player.move("right")
player.move("right")
player.move("right")
player.move("right")
player.move("up")
player.move("up")
player.move("up")
player.move("up")
player.move("up")





// Reflection
//
//What was the most difficult part of this challenge?
// -Honestly the most difficult part of this was to come up with an idea for a game.
//
//What did you learn about creating objects and functions that interact with one another?
// - I found it easier to create the less important ones first, and then create the one that will be interacting will all the less important ones.
//
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// - My game didn't really require too many built in methods, it was more control flow throughout the whole game. Hence my code couldn't really be refactored too much.
//
//How can you access and manipulate properties of objects?
// - By calling and comparing them through dot or bracket notation.
