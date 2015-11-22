# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer.
# What is the output? (i.e. What should the code return?)
# A comma-separated integer as a string.
# What are the steps needed to solve the problem?
# 1) Define the method and its argument.
# 2) Convert the integer to a string.
# 3) REVERSE the string.
# 4) Add a comma after every 3 integers.
# 5) REVERSE the string back and return its value.


# 1. Initial Solution
=begin
def separate_comma(integer)
  reversed_int = integer.to_s.reverse
    if reversed_int.length > 3 && reversed_int.length <= 6
      return reversed_int.insert(3, ",").reverse
    elsif reversed_int.length > 6
      return reversed_int.insert(6, ",").insert(3, ",").reverse
    else
      return reversed_int.reverse
    end
end

p separate_comma(1000000) #used for testing
=end

# 2. Refactored Solution
def separate_comma(integer)
  int = integer.to_s.reverse
    if int.length > 3 && int.length <= 6
      return int.insert(3, ",").reverse
    elsif int.length > 6
      return int.insert(6, ",").insert(3, ",").reverse
    else
      return int.reverse
    end
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
Defining the method, converting the integer to a string, and reversing the string back and forth were pretty straight forward. But I DEFINITELY considered so many different approaches when it came to adding a comma after every 3 integers. Before using "insert", I was trying to convert the string back to an array so that I can try to implement array methods to add my commas. Unfortunately I probably burned 1.5 hours failing to use (though I know its possible) "each", "join", "select", and running into problems of converting to an array itself.
Was your pseudocode effective in helping you build a successful initial solution?
It was. During the problems I had above, I took a deep breath, reread my pseudocode (stating nothing about arrays) and just decided to write an IF/ELSE statement.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
Unfortunately wasn't able to implement new methods to my refactored solution, as I tried and failed with my initial solution (see first question). I did implement the "insert" method, which was new for me so I had a little trouble with it for a bit. It definitely changed the way my code works because I knew that I had to find some sort of method to help me add the commas.
How did you initially iterate through the data structure?
I wanted to convert it to an array so I can iterate through it that way but I just really couldn't get that to work. So I just had resort to using a conditional IF/ELSE statement with "length" and "insert".
Do you feel your refactored solution is more readable than your initial solution? Why?
I do. I renamed the "reversed_int" variable to just "int". I think this was helpful to read not just because the variable name is shorter but my intial solution had too much of the word "reverse" all over the place, possibly making it more difficult to keep track of what each line/block is doing.
=end