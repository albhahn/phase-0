##What does puts do?##
It returns nil and prints the output to the console with a new line.

##What is an integer? What is a float?##
An interger is a number without decimal points. A float is a number with decimal points.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?##
The difference is that when using division with floats, you'll get an accurate decimal answer. But when using division with integers, you wont receive the "most accurate" answer. For instance, 10/3 will return 3 instead of 3.333, this is because it will always round down with integers. Lets say you wanted to purchase as many Apples you could for $3 each but only had $10, how many apples would you be able to buy? You can buy 3 apples, not 3.333 apples.

##Hours in a year##
```ruby
puts 24 * 365
```
##Minutes in a decade##
```ruby
puts 60 * 24 * 365 * 10
```

##Excercise Links##
[Defining Variables](https://github.com/albhahn/phase-0/blob/master/week-4/defining-variables.rb)
[Simple String](https://github.com/albhahn/phase-0/blob/master/week-4/simple-string.rb)
[Basic Math](https://github.com/albhahn/phase-0/blob/master/week-4/basic-math.rb)

##Reflection##
**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
Just like any calculator would for the most part, except when using division(stated above on the 3rd question). The main thing to consider would be if youre using integers or floats as the number.

**What is the difference between integers and floats?**
Intergers are whole numbers, while floats are numbers with decimal points(stated above on 2nd question).

**What is the difference between integer and float division?**
The difference is that when using division with floats, you'll get an accurate decimal answer. But when using division with integers, you wont receive the "most accurate" answer. For instance, 10/3 will return 3 instead of 3.333, this is because it will always round down with integers. Lets say you wanted to purchase as many Apples you could for $3 each but only had $10, how many apples would you be able to buy? You can buy 3 apples, not 3.333 apples. (This was copied from the 3rd question above)

**What are strings? Why and when would you use them?**
Strings are kind group of letters, characters, or text that are grouped together.

**What are local variables? Why and when would you use them?**
A variable is something that we can define as anything we'd like which points to a value that we declare.

**How was this challenge? Did you get a good review of some of the basics?**
This challenge actually took a bit more time than I had expected. I thought reading through Chris Pines book and the excercises we did in Release 5 we're definitely nice to refresh on our Ruby code. I must add that I felt some of the questions we answered were tedious and repetitive in this challenge. I also thought most of the excercises would focus more on the 3 chapters in Chris Pines book but on the 2nd excercise we actually had to use methods which those chapters did not cover. Might be a good idea to add reading through Chapter 5 and 6 in this challenge rather than just 2-4, based on those excercises.