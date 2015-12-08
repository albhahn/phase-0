// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.

// Bulk Up

var athlete1 = {
  name: "Sarah Hughes",
  event_name: "Ladies' Singles",
}

var athlete2 = {
  name: "Albert Hahn",
  event_name: "Mens' Gaming"
}

var win = function(array) {
  for (var i = 0; i < array.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event_name + "!"
  }
}
win(athlete2);
console.log(athlete2.win);
// Jumble your words

function reverse(string) {
  return string.split("").reverse().join("");
}

console.log(reverse("!sdrow ruoy elbmuJ"))


// 2,4,6,8

function Even(array) {
  var array_of_nums = []
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0)
      array_of_nums.push(array[i])
  }
  return array_of_nums
}

console.log(Even([1,2,3,4,5,6,7,8]))


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
Syntax, methods, constructor/literal, functions, and properties.
What are constructor functions?
They are used in a way like you would "initialize" in Ruby classes. You basically create variables that can be used as an instance of objects or their properties.
How are constructors different from Ruby classes (in your research)?
Though they are similar, they differ a bit in syntax. Constructors can also have properties and methods that are unique to them.
*/