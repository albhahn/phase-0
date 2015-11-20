# Calculate the mode Pairing Challenge

# I worked on this challenge with: Cole Kent.

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# Used pseudocode until our logic failed, then changed the code to work with available methods.

# What is the input?
# Taking in an array.
# What is the output? (i.e. What should the code return?)
# Returning an array with an element that occurs the most.
# What are the steps needed to solve the problem?
# 1. Loop through values of array
# 2. Compare to every other value
# 3. IF values match, add to counter
# 4. return the value with the highest count

# 1. Initial Solution
def mode(elements)
# First Attempt -

  # count = Hash.new(0)
  # elements.each { |key| count[key] += 1 }
  # last = count.sort_by { |key, value| value }.reverse
  # last.last[0]
  # end

    count = []
    answer = []
    unique = elements.uniq
    j=0

    unique.each do |i|
      count[j] = elements.count(i)
        j+=1
    end

    k=0
    count.each do |i|
        answer[k] = unique[k] if i == count.max
        k+=1
    end

    return answer.compact

end

# 3. Refactored Solution
def mode(elements)
  hash = elements.group_by {|i| elements.count(i)}
  hash[hash.keys.max].uniq
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
At first, we were trying to see if we could just use an array to loop through the values, compare each value, and add to a counter if values matched. We realized we would need to create a hash but we ran into problems there as well.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
No, we had trouble following our initial pseudocode, and had to change our code entirely to available methods.
What issues/successes did you run into when translating your pseudocode to code?
We actually were able to return the value with the highest count, one problem we ran into was that we werent able to return all values if there were more than one most-frequent values. Another problem was that if our most-frequent value was "0", it wouldnt count them.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used ".each" to iterate through our initial solution. The method "group_by" was actually fairly easy to understand and implement when refactoring.
=end