# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 8
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
#  there is an unexpeceted '=' and its expecting end-of-input instead.
# 5. Where is the error in the code?
#  It's pointing at the '=' inbetween "I'm going home" and cartmans_phrase.
# 6. Why did the interpreter give you this error?
# Because a variable cannot be defined that way. That example code needs to be flipped backwards so that variables are the first thing being identified, and operations follow after the equals sign. (i.e. cartmans_phrase = "Screw you guys " + "I'm going home.")

# --- error -------------------------------------------------------

south_park = "A favorite cartoon show growing up"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# It tells me there is a local variable or method named 'south_park' that is undefined.
# 4. Where is the error in the code?
# This time, it doesnt exactly point at where the error is but the information it gave me, states where it is (south_park).
# 5. Why did the interpreter give you this error?
# Because it does not know what south_park is or does, as it is not defined as neither a variable or method.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# Tells me that there is a method named 'cartman' that is undefined.
# 4. Where is the error in the code?
# Again it doesnt point to it but the information the interpreter gave me, tells me where it is, which is the method (cartman).
# 5. Why did the interpreter give you this error?
# Because of the parenthesis after the word 'cartman', it's trying to run it as a method, but it has not yet been fully defined.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# There is a wrong number of arguments (1 for 0).
# 4. Where is the error in the code?
# This time, instead of pointing at the error nor the additional information I've received stating where, it provided me with extra information as to where the error is (from errors.rb:71:in '<main>'). Now with this, I can assume the error lies on line 71.
# 5. Why did the interpreter give you this error?
# Because this method does not pass through any arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Screw you guys")

# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
# There is a wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# Just like the last error, it again provides some extra information (from errors.rb:90:in '<main>') and I can again assume the error should lie on line 90.
# 5. Why did the interpreter give you this error?
# Because we did not pass through any arguments for the method 'cartman_says'.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kenny!')

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# in 'cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# (from errors.rb:111:in '<main>') Should mean its on line 111.
# 5. Why did the interpreter give you this error?
# Because the method is expecting a second argument to be passed through, whereas this only has one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!" (should be reversed i.e. "string * 5")

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# in `*'
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# (from errors.rb:126:in `<main>') Which should mean its on line 126.
# 5. Why did the interpreter give you this error?
# Because you cannot multiply something a "string" amount of times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/5


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# in `/'
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# (from errors.rb:141:in '<main>') Should mean the error is on line 141.
# 5. Why did the interpreter give you this error?
# Because you can never divide anything by 0, Ruby is no exception.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# in 'require_relative'
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file -- /Path/To/File/cartmans_essay.md
# 4. Where is the error in the code?
# (from errors.rb:157:in '<main>') Should mean the error is on line 157.
# 5. Why did the interpreter give you this error?
# Because such a file does not exist locally.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
I'm going to have to say the first one, only because after going through it, the following errors became easier to read.

How did you figure out what the issue with the error was?
Simply by reading through and understanding both the error message and the methods/variables themselves.

Were you able to determine why each error message happened based on the code?
Yes, perhaps not all of them at first glance but after reviewing them a couple times, they were pretty easy to spot out.

When you encounter errors in your future code, what process will you follow to help you debug?
After this challenge, the process of reading through the error message, of course. I thought this was a really neat challenge as I've always "tried" to read error messages and try to grasp a better understanding, and this challenge certainly helped with that.
=end