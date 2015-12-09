# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [1.5] hours.

# Pseudocode
# Input: Sentence as a string
# Output: Words in sentence reversed
# Steps:
# 1. Define method "reverse_words", which takes in a string (sentence)
# 2. SPLIT the sentence of each word into individual strings
# 3. Declare an empty array
# 4. Iterate through every word in the sentence into the array
# 5. Reverse every word in the array
# 6. Convert each element of the array into a string between spaces
# 7. Return the string

# Initial Solution
=begin
def reverse_words(sentence)
  words = sentence.split
  reversed_words = []
  words.length.times do |word|
    reversed_words[word] = words[word].reverse
  end
  return reversed_words.join(" ")
end

p reverse_words("Driver code sentence")
=end
# Refactored Solution

def reverse_words(sentence)
  words = sentence.split
  reversed_words = []
  words.length.times do |word|
    reversed_words[word] = words[word].reverse
  end
  return reversed_words.join(" ")
end

p reverse_words("Driver code sentence")

# Reflection
=begin
What concepts did you review or learn in this challenge?
I thought this was a great challenge for me to review iterating through an array and using methods to convert from strings to fixnums (#length) and arrays to strings (#join).

What is still confusing to you about Ruby?
Which methods can be used for certain types of objects. I think more practice with all the methods and Ruby overall will help remind myself which methods belong to which objects.

What are you going to study to get more prepared for Phase 1?
Probably everything, as that should also help me with remembering syntax. Trying out new methods should also help prepare me for Phase 1.

=end