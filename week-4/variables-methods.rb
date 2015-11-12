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