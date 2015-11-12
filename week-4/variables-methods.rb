#Full Name Greeting

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Nice to meet you " + first_name + " " + middle_name + " " + last_name

#Bigger, better favorite number

puts 'What is your favorite integer?'
fav_integer = gets.chomp.to_i + 1

puts 'I would have to suggest, ' + fav_integer.to_s + ' is a bigger and better number!'

=begin

How do you define a local variable? How do you define a method?
A local variable can be defined to any data or information you'd like and be named anything you'd like as well. (i.e. any_variable_name = "any input").
A method can be defined to do something, which can also be named as anything but usually a name that describes what the method is doing. (i.e. See Below)
def method_name
  1 + 1 #or do anything
end

What is the difference between a local variable and a method?
A local variable is used to store information that can be called upon, whereas a method is able to actually run or do something.

How do you run a ruby program from the command line?
Once you're in the same directory as the ruby file, you type in "ruby" followed by the ruby files name. (i.e. "ruby file_name.rb")

How do you run an RSpec file from the command line?
Again, in the same directory as the ruby RSpec file, you type in "rspec" followed by the files name. (i.e. "rspec file_name.rb")

What was confusing about this material? What made
sense?
At first I had a little trouble with returning the address in the exact order of characters but was able to place them correctly after overlooking the code a couple times. I'd say overall, defining methods and variables made sense.

Excercise 4.3.1 - https://github.com/albhahn/phase-0/blob/master/week-4/address/my_solution.rb
Excercise 4.3.2 - https://github.com/albhahn/phase-0/blob/master/week-4/math/my_solution.rb

=end