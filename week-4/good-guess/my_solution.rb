# Good Guess

# I worked on this challenge by myself.


# Your Solution Below

def good_guess?(number)
  if number == 42
    return true
  elsif number != 42
    return false
  end
end

p good_guess?(42)
p good_guess?(1)