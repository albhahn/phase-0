// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: Integer
// Output: Comma-separated integer as a string
// Steps:
// 1. Convert number to string
// 2. Conver string of numbers to an array
// 3. Create statement WHILE index number is greater than 2
// 4. Counter begins at length of the array
// 5. Add comma to every third element in array
// 6. Join the array



// Initial Solution
/*
function separateComma(number) {
  var array_of_nums = number.toString().split("");
  var integer = array_of_nums.length - 3;
  while (integer >= 1) {
    array_of_nums[integer] = "," + array_of_nums[integer];
    integer -= 3
  }
  return array_of_nums.join("")
}
*/
// Refactored Solution

function separateComma(number) {
  var array_of_nums = number.toString().split("");
  var integer = array_of_nums.length - 3;
  while (integer >= 1) {
    array_of_nums[integer] = "," + array_of_nums[integer];
    integer -= 3
  }
  return array_of_nums.join("")
}

console.log(separateComma(123123))
console.log(separateComma(12312300))
console.log(separateComma(123123123))
console.log(separateComma(1231231230))

// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
I definitely did. The first time I did this challenge, I only made the tests pass with numbers going up to 7 digits. In this challenge, I used a while loop so that the commas would be inserted into bigger numbers as well.
What did you learn about iterating over arrays in JavaScript?
Definitely different than in Ruby. With Ruby, you have methods like #each and enumerable methods. In JS, you have to really break it all down, like with the while loop.
What was different about solving this problem in JavaScript?
You have to iterate through the elements yourself, rather than using methods like in Ruby.
What built-in methods did you find to incorporate in your refactored solution?
Was not able to find any. Still very new and a bit confused on the JS docs.
*/