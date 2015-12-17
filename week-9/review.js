/*
User Stories:
1. As a grocery shopper, I want to create a new grocery list.
2. As a grocery shopper, I want to add new items with a quantity to the list.
3. As a grocery shopper, I want to remove an item from the list.
4. As a grocery shopper, I want to update item quantities in the list.
5. As a grocery shopper, I want to print the list.

Pseudocode:
1. Create a new object called "List"
2. Create an empty object called "items" inside of "List"
3. Create a funtion which will take in an item and quantity as arguments and then create a new object inside "items" with new item as property and the quantity as the value.
4. Create a function that will take in an item as the argument and deletes that item from "items"
5. Create a function that will take in an item and quantity as arguments and then updates that item's quantity in "items".
6. Iterate through each item in "items" and print them out with the quantity
*/

// Initial Solution:
// function List() {
//   List.items = {};
// }

// List.prototype.addItem = function(item, quantity) {
//   List.items[item] = quantity;
// }

// List.prototype.removeItem = function(item) {
//   delete List.items[item];
// }

// List.prototype.updateItem = function(item, updated_qty) {
//   List.items[item] = updated_qty;
// }

// List.prototype.printList = function() {
//   console.log(List.items);
// }

// Refactored Solution:
function List() {
  this.items = {};
}

List.prototype.addItem = function(new_item, quantity) {
  this.items[new_item] = quantity;
}

List.prototype.removeItem = function(existing_item) {
  delete this.items[existing_item];
}

List.prototype.updateItem = function(updated_item, updated_qty) {
  this.items[updated_item] = updated_qty;
}

List.prototype.printList = function() {
  console.log(this.items);
}

// Driver Code:
xmasDinnerList = new List;
xmasDinnerList.addItem("steak", 4);
xmasDinnerList.addItem("potatoes", 10);
xmasDinnerList.addItem("asparagus", 20);
xmasDinnerList.addItem("a1 sauce", 1);
xmasDinnerList.addItem("wine", 2);
xmasDinnerList.printList();
xmasDinnerList.removeItem("a1 sauce");
xmasDinnerList.printList();
xmasDinnerList.updateItem("wine", 3);
xmasDinnerList.printList();

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I learned so much about JavaScript Object Prototypes, how to create one, using the "new" keyword, and adding properties/methods. The page from w3schools was amazing for this (http://www.w3schools.com/js/js_object_prototypes.asp).

What was the most difficult part of this challenge?
Figuring out exactly how I was going to complete each step but once I came across the w3schools page I posted in the above question, it became fairly once i understood and implemented the "prototype" keyword.

Did an array or object make more sense to use and why?
Definitely an object, I didnt even for a second consider or think about arrays (perhaps also because we used a Hash in Ruby). Objects make more sense here because we are storing and accessing 2 different pieces of data (item/quantity), which is the property and its value (key/value in Ruby).
*/