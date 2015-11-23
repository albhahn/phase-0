# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [2.5] hours on this challenge.

# 0. Pseudocode

# Input:
# x number of sides
# Output:
# random number within the x number of sides or ArgumentError IF number of sides is less than 1
# Steps:
# 1. "Initialize" the class by defining it
# 2. RAISE an ArgumentError IF number of sides is less than 1
# 3. Define method "sides"
# 4. Define method "roll"


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Please enter a number greater than 0")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end
=end


# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Please enter a number greater than 0") if sides < 1
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end





# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is like an error message you can add(raise) and write. You would use one when an argument being passed is not accepted.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used the rand() method for the first time, the only challenge with it was making sure that it doesnt return the number "0", which was easy to understand with examples/research.

What is a Ruby class?
It's like a blueprint to create a new object, that has methods defined within them.

Why would you use a Ruby class?
You would use a Ruby class when you'd want to save and implement a set of methods or actions to multiple objects.

What is the difference between a local variable and an instance variable?
Local variables can only be accessed within its own method. Instance variables can be accessed within a certain class and have a "@" sign in front of them (@variable_name).

Where can an instance variable be used?
They can be used across methods.
=end