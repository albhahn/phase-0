# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create a method "call"
  # Declare a variable "letter" that randomly picks a letter out of an array
  # Declare a varialbe "number" that randomly picks a number from 1 to 100
  # Return both the letter and number

# Check the called column for the number called.
  # Create a method "check"
  # Check each column of the bingo board
  # IF the first value from "call" (letter) is "B", check every first element of EACH nested array
  # ELSIF the first value from "call" (letter) is "I", check every second element of EACH nested array
  # ELSIF the first value from "call" (letter) is "N", check every third element of EACH nested array
  # ELSIF the first value from "call" (letter) is "G", check every fourth element of EACH nested array
  # ELSIF the first value from "call" (letter) is "O", check every fifth element of EACH nested array

# If the number is in the column, replace with an 'x'
  # IF the second value from "call" (number) also matches a number in the column, replace that number with "X"

# Display a column to the console
  # Print the column for a given "letter"

# Display the board to the console (prettily)
  # Print out the word "BINGO" evenly so that it matches with each column.

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ['B', 'I', 'N', 'G', 'O'].sample
    number = rand(1..100)
    return [letter, number]
  end

  def check(call)
    if call[0] == 'B'
      @bingo_board.each do |column|
        if column[0] == call[1]
          column[0] = 'X'
        end
      end
    elsif call[0] == 'I'
      @bingo_board.each do |column|
        if column[1] == call[1]
          column[1] = 'X'
        end
      end
    elsif call[0] == 'N'
      @bingo_board.each do |column|
        if column[2] == call[1]
          column[2] = 'X'
        end
      end
    elsif call[0] == 'G'
      @bingo_board.each do |column|
        if column[3] == call[1]
          column[3] = 'X'
        end
      end
    elsif call[0] == 'O'
      @bingo_board.each do |column|
        if column[4] == call[1]
          column[4] = 'X'
        end
      end
    end
  end

  def display
    puts " B | I | N | G | O"
    @bingo_board.each { |column| p column }
  end

end
=end
# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ['B', 'I', 'N', 'G', 'O'].sample
    number = rand(1..100)
    return [letter, number]
  end

  def check(call)
    if call[0] == 'B'
      @bingo_board.each do |column|
        if column[0] == call[1]
          column[0] = 'X'
        end
      end
    elsif call[0] == 'I'
      @bingo_board.each do |column|
        if column[1] == call[1]
          column[1] = 'X'
        end
      end
    elsif call[0] == 'N'
      @bingo_board.each do |column|
        if column[2] == call[1]
          column[2] = 'X'
        end
      end
    elsif call[0] == 'G'
      @bingo_board.each do |column|
        if column[3] == call[1]
          column[3] = 'X'
        end
      end
    elsif call[0] == 'O'
      @bingo_board.each do |column|
        if column[4] == call[1]
          column[4] = 'X'
        end
      end
    end
  end

  def display # Refactoring here
    puts "B  |  I  |  N  |  G  |  O"
    @bingo_board.each do |column|
      puts column.map { |x| x.to_s.ljust(5) }.join(" ")
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
#p new_game.call
new_game.check(["B", 22])
new_game.check(["I", 69])
new_game.check(["N", 75])
new_game.check(["G", 65])
new_game.check(["O", 73])
new_game.display

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
In terms of difficulty, not too bad but I did spend a lot of time on it. I guess its difficult when trying to write each step but you need to make sure/double check its accurate in code form as well. I think my style is alright for now - there are times when I want to write more steps but I haven't yet solved how to get to my solution and I cant write enough details so I guess that can feel a bit underwhelming.

What are the benefits of using a class for this challenge?
Being able to use the @bingo_board(instance variable) in almost all of my methods was probably the biggest beneficiary to me.

How can you access coordinates in a nested array?
With indexes one after another. The nested/inner array index comes after the previous one, for example, "[0][0][0]" the last index (furthest from the left) is the most inner array of the 3.

What methods did you use to access and modify the array?
I used #each, #sample, #map, and #join

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#map wasn't exactly a new method I learned but it was what I had used to refactor my solution for displaying my board prettily. Release 4 did not clearly state I had to use a new one, however, I did need the Ruby Docs to remind me/freshen up on it and I couldnt wait to do so during my initial solution. #map invokes the given block once for each element of self and creates a new array containing the values returned by the block. In this case, I used #ljust and #join to adjust each element and space them out to line up prettily. You use #map similarly to how you would with #each.

How did you determine what should be an instance variable versus a local variable?
I only determined the "@bingo_board" as an instance variable because I had to use it across methods within the class. Whereas "number" was a local variable because I only needed it in my "call" method.

What do you feel is most improved in your refactored solution?
Without a doubt, my display of the board. Being that this challenge emphasized on displaying the board "prettily", I initially was a bit stumped on how I was going to do that. My initial solution was actually not pretty at all so I focused on doing that during my refactored solution. I remember learning about "ljust" during Chris Pine's book but it had been a long time since I really tinkered with it so that was nice to refresh my memory on.

=end