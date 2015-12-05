// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Albert"
console.log(name + " is learning JavaScript")

// Favorite Food Program
// prompt("What is your favorite food?")
// alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var number = 1; number <= 100; number ++) {
  if (number % 3 == 0 && number % 5 == 0)
    console.log("FizzBuzz")
  else if (number % 3 == 0)
    console.log("Fizz")
  else if (number % 5 == 0)
    console.log("Buzz")
  else
    console.log(number);
}


// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}
console.log(min(0, 10));
console.log(min(0, -10));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Albert",
  age: "27",
  favorite_foods: ["Korean", "Steak", "Mediterranean"],
  quirk: "I am a fantasy sports expert!"
}

console.log(me);