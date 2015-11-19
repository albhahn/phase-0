# Pad an Array

# I worked on this challenge with: Jonathan Huang.

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#pad!
#input: array, minimum size of array, and optional padding value
#output: original array replaced with padded array
#steps:
#1. Determine if array length is greater than or equal to minimum size
#2. IF true, return original array
#3. ELSE determine difference (x) between minimum size and array length
#4. Push the padding value (x) number of times to the array

#pad
#input: array, minimum size of array, and optional padding value
#output: new array with padding but does not replace original array
#steps:
#1. Determine if array length is greater than or equal to min size
#2. IF true, return new array thats equal to the original array
#3. ELSE determine difference (x) between min size and array length
#4. Push the padding value (x) number of times to the NEW array, not altering the original array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length
    while diff > 0
      array.push(value)
      diff -= 1
    end
    return array
  end
end




def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size
    return Array.new(array)
  else
    new_array = Array.new(array)
    diff = min_size - array.length
    while diff > 0
      new_array.push(value)
      diff -= 1
    end
    return new_array
  end
end






# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  return array if array.length >= min_size

  array.push(value) while min_size > array.length
  array
end

def pad(array, min_size, value = nil) #non-destructive
  return Array.new(array) if array.length >= min_size
=begin
  new_array = Array.new(array)
  new_array.push(value) while min_size > new_array.length
=end
  Array.new(array).fill(value, array.length, min_size - array.length)

end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes, I think we followed the steps with our code accordingly.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
I wouldn't say easily but it definitely helped to write and follow the pseudocode with our actual code. It was easy to accomplish the first couple steps we listed, the last two were a bit more challenging/difficult.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Yes but not at first, we ran into some simple problems by using the wrong comparison operators and forgetting to subtract 1 from our difference.

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, we realized we could return both the IF and WHILE statements to one line, which I think simplifies the code and makes it easier for readability. We also used ".fill" to replace ".push" and our WHILE statement, which was very neat!

How readable is your solution? Did you and your pair choose descriptive variable names?
I believe so, with both of our initial and refactored solutions. In our initial solution, we defined a variable name as "diff", which I think most people would assume it to be the same as "difference".

What is the difference between destructive and non-destructive methods in your own words?
  Destructive methods permanently change and modify the original data and non-destructive methods can return changes to the data but it will not permanently modify them. Destructive methods can be used with the "!" symbol, it goes behind a method names (i.e. method_name!).
=end