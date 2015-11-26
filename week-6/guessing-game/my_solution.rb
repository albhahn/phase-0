# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: An integer called guess
# Output: :high if guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.
# Steps:
# 1. "Initialize" the method by defining it and accepting "answer" as input.
# 2. Define a method called "guess" that accepts an integer. IF the integer is higher than, less than, or equal to the answer, return :high, :low, or :correct.
# 3. Define a method called "solved" that returns true IF the latest "guess" returned :correct and false if ELSE otherwise.


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(int)
    @int = int
    if @int > @answer
      return :high
    elsif @int < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @int == @answer
      return true
    else
      return false
    end
  end
end
=end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    return :high if @number > @answer
    return :low if @number < @answer
    return :correct if @number == @answer
  end

  def solved?
    return true if @number == @answer
    else return false
  end
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Because they can actually DO something and RETURN something else for you by taking in data and retrieving new data for you, as well as stored data.

When should you use instance variables? What do they do for you?
When you would like to retrieve particular data across various methods. It allows you to access/transfer that data in another method within the same class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
You use flow control in a way that your computer is reading the first line, giving you a result and IF not it will give you a different result and so on. It was pretty basic in this challenge for both the "guess" and "solved?" methods, the only thing you may have had to watch out for is setting your instance varialbes to be used in the flow control.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Not entirely sure as to why this code required symbols for :high, :low:, and :correct. Possibly because converting symbols into strings are made easy? Symbols can also be beneficial not only because they are unique, but being unique allows the computer to access symbols very quickly.
=end