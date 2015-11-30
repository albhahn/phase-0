# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Benjamin Shpringer
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number (credit card)
# Output: True or false based on valid credit card or not
# Steps:
# 1. "Initialize" CreditCard class by defining it
# 2. IF the input is greater than or less than 16 digits, RAISE ArgumentError
# 3. Define a method to double every other digit, starting with the second to last digit
# 4. Define a method to seperate every 2 digit numbers
# 5. Define "check_card" method to sum up all the digits and return true IF the total is divisible by 10, ELSE return false.



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  def initialize(number)
    @card_number = number
    if number.to_s.length != 16
      raise ArgumentError.new("You must enter a 16 digit number.")
    end
  end

  def double_digit
    array_of_digits = @card_number.to_s.split("")
    array_of_digits.map! { |num| num.to_i }
    @doubled_digits = array_of_digits.map.with_index { |num, index|
      if index % 2 == 0
        num * 2
      else num end }

  end

  def seperate_digits
    array_of_split_digits = @doubled_digits.map { |num| num.to_s }
    @split_string = array_of_split_digits.join.split("")
    @split_string.map! { |num| num.to_i }
  end

  def sum_digits
    array_of_sum = 0
    @split_string.each { |num| array_of_sum = array_of_sum + num }
    @array_of_sum = array_of_sum
  end

  def check_card
    double_digit
    seperate_digits
    sum_digits
    if @array_of_sum % 10 == 0
      return true
    else
      return false
    end
  end

end

#card = CreditCard.new(4563960122001999)
#p card.check_card
=end

# Refactored Solution

class CreditCard

  def initialize(number)
    @card_number = number
    raise ArgumentError.new("You must enter a 16 digit number.") if number.to_s.length != 16
  end

  def double_digit
    digits_to_double = @card_number.to_s.split("")
    digits_to_double.map! { |num| num.to_i }
    @doubled_digits = digits_to_double.map.with_index do |num, index|
      if index % 2 == 0
        num * 2
      else num
      end
    end
  end

  def seperate_digits
    digits_to_split = @doubled_digits.map { |num| num.to_s }
    @split_string = digits_to_split.join.split("")
    @split_string.map! { |num| num.to_i }
  end

  def sum_digits
    total_sum = 0
    @split_string.each { |num| total_sum = total_sum + num }
    @total_sum = total_sum
  end

  def check_card
    double_digit
    seperate_digits
    sum_digits
    if @total_sum % 10 == 0
      return true
    else
      return false
    end
  end

end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
I think creating the function for "double_digit" was probably the most difficult, everything else was pretty straight forward. Also, Being that the challenge typically wanted us to break the steps down into individual methods, it was both helpful and challenging to do so. We had to keep track of making instance variables so that we could bring them down to the next step/method.

What new methods did you find to help you when you refactored?
I only refactored my code to try and make it easier for readability and actually did not implement a new method, though i did learn more about #with_index as this was probably only my second time or so coming across it.

What concepts or learnings were you able to solidify in this challenge?
The concept of breaking the steps needed into individual methods helped in this challenge and how useful instance variables can be.

=end