# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:
# Array of strings
# Output:
# Randomly return one string from array but IF array is empty, RAISE an ArgumentError
# Steps:
# 1. "Initialize" the class by defining it
# 2. RAISE an ArgumentError IF given array is empty
# 3. Define method "sides"
# 4. Define method "roll"

# Initial Solution
=begin
class Die
  def initialize(labels)
    @labels = labels
    if labels.length < 1
      raise ArgumentError.new("Please enter an array that is not empty.")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(@labels.length)]
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Please enter an array that is not empty.") if labels.length < 1
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference is that this class accepts an array while the last one accepted a number(sides). So that means all the methods had to be adjusted for an array, rather than just a number. I didn't have to change too much other than the making the "roll" method return a random element from an array rather than up to a certain number and the "sides" method needed to return the length of the array in order to return all sides.

What does this exercise teach you about making code that is easily changeable or modifiable?
This exercise in particular taught me that you can basically use the same basic concepts from the previous class' methods and make minor adjustments to them according to your data type (in this case, an array).

What new methods did you learn when working on this challenge, if any?
I again learned "rand" (again, because this time it was with an array) and I was also able to find the array method "sample", which basically does the "rand" for me by simply calling ".sample" to an array.

What concepts about classes were you able to solidify in this challenge?
Just getting more familiarized to them as a whole and how the methods can be worked with each other.
=end