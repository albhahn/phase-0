 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Rescue princess_peach!
// Overall mission: Find princess_peach before Bowser reaches you (Bowser moves opposite direction as you)
// Goals: Avoid Bowser, find princess_peach
// Characters: Mario, princess_peach, Bowser
// Objects: Mario, princess_peach, Bowser
// Functions: move up, move down, move left, move right

// Pseudocode
// Define three objects (Mario, princess_peach, Bowser)
// Define function to move (X = up/down Y = right/left)
// Mario starts at min X, Y (0, 0)
// Bowser starts at max X, Y (20, 20)
// princess_peach starts at random X, Y between 1-20
// Check if Mario has found princess_peach or if Bowser reaches Mario first

// Initial Code
/*
var princess_peach = {
  position_X: Math.floor((Math.random()*20)+1),
  position_Y: Math.floor((Math.random()*20)+1)
};

var Bowser = {
  position_X: 20,
  position_Y: 20
};

var Mario = {
  position_X: 0,
  position_Y: 0,
  move: function(direction) {
    if (direction === "up") {
      Mario.position_Y++;
      Bowser.position_Y--;
    }
    else if (direction === "down") {
      Mario.position_Y--;
      Bowser.position_Y++;
    }
    else if (direction === "right") {
      Mario.position_X++;
      Bowser.position_X--;
    }
    else if (direction === "left") {
      Mario.position_X--;
      Bowser.position_X++;
    }


if (Mario.position_Y === princess_peach.position_Y && Mario.position_X === princess_peach.position_X) {
  console.log("Great job. You rescued Peach!")
}
else if (Mario.position_Y === Bowser.position_Y && Mario.position_X === Bowser.position_X) {
  console.log("Oh no! Bowser has reached you before you found Peach. Try again.")
}

console.log("Mario's location is " + Mario.position_X + "," + Mario.position_Y);
console.log("Bowser's location is " + Bowser.position_X + "," + Bowser.position_Y);
}
};

Mario.move("up");
Mario.move("up");
Mario.move("up");
Mario.move("right");
Mario.move("right");
Mario.move("down");
Mario.move("right");
Mario.move("down");
Mario.move("left");
*/

// Refactored Code

var princess_peach = {
  position_X: Math.floor((Math.random()*20)+1),
  position_Y: Math.floor((Math.random()*20)+1)
};

var Bowser = {
  position_X: 20,
  position_Y: 20
};

var Mario = {
  position_X: 0,
  position_Y: 0,
  move: function(direction) {
    if (direction === "up") {
      Mario.position_Y++;
      Bowser.position_Y--;
    }
    else if (direction === "down") {
      Mario.position_Y--;
      Bowser.position_Y++;
    }
    else if (direction === "right") {
      Mario.position_X++;
      Bowser.position_X--;
    }
    else if (direction === "left") {
      Mario.position_X--;
      Bowser.position_X++;
    }


if (Mario.position_Y === princess_peach.position_Y && Mario.position_X === princess_peach.position_X) {
  console.log("Great job. You rescued Peach!")
}
else if (Mario.position_Y === Bowser.position_Y && Mario.position_X === Bowser.position_X) {
  console.log("Oh no! Bowser has reached you before you found Peach. Try again.")
}

console.log("Mario's location is " + Mario.position_X + "," + Mario.position_Y);
console.log("Bowser's location is " + Bowser.position_X + "," + Bowser.position_Y);
}
};

Mario.move("up");
Mario.move("up");
Mario.move("up");
Mario.move("right");
Mario.move("right");
Mario.move("down");
Mario.move("right");
Mario.move("down");
Mario.move("left");

// Reflection

// What was the most difficult part of this challenge?
// I think the overall syntax was probably the most difficult. I had a little trouble with the wrong placement of an ending brace and a semicolon, which took me a lot of time to find/correct.
// What did you learn about creating objects and functions that interact with one another?
// Objects have their own properties, so in this challenge, I had to have one object (Mario) function for both Mario and Bowser.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I couldnt find any for my refactored solution but I did learn how to use #random (will return a random float from 0 to 1, and you can set a max/min) and #floor (which will convert a float to a rounded down integer).
// How can you access and manipulate properties of objects?
// By simply calling the objects name, followed by the "." operator, then the property name. Accessing a properties function is done in the same way.