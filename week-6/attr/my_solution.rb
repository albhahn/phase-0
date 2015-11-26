#Attr Methods

# I worked on this challenge by myself.

# I spent [2.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name

  def initialize
    @name = "Albert"
  end
end


class Greetings
  def initialize
    @my_name = NameData.new
  end

  def hello
    puts "Hello #{@my_name.name}! How wonderful to see you today."
  end
end

greeting = Greetings.new
greeting.hello

=begin
# Release 1:
What are these methods doing?
Storing information/data and then allowing the output of the information to be changed.

How are they modifying or returning the value of instance variables?
Modifying all of the values by using setters to set them to instance variables.

# Release 2:
What changed between the last release and this release?
In this release, the method "attr_reader :age" was added.

What was replaced?
The "what_is_age" method.

Is this code simpler than the last?
Sure. Rather than defining a new method and writing multiple lines of code, we can just use "attr_reader :age" to call the age.

# Release 3:
What changed between the last release and this release?
The method "attr_writer :age" was added.

What was replaced?
The "change_my_age" method.

Is this code simpler than the last?
Yes. Again, rather than defining a new method to allow us to change the age, we can just use "attr_writer :age"

# Reflection:
What is a reader method?
Just that, a reader. Meaning it just returns the value outside of the class, but will not change it.

What is a writer method?
The opposite of above, you can change the value of the variable outside of the class, but you cant read it.

What do the attr methods do for you?
They allow you to return and change values of variables outside of classes, which can save you a ton of time rather than having to re-define or write same methods/code.

Should you always use an accessor to cover your bases? Why or why not?
Definitely not. When wanting to simply read instance variables rather than changing them, using accessor can lead to difficult debugging problems or even compromise the security of your data.

What is confusing to you about these methods?
Nothing too confusing, but just some getting used to with how to interact outside of and with other classes.
=end