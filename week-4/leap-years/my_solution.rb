# Leap Years

# I worked on this challenge [by myself, with: Alex Mitzman].


# Your Solution Below

def leap_year?(leap)
  if leap % 4 != 0
    return false
  elsif leap % 4 == 0 && leap % 100 == 0 && leap % 400 != 0
    return false
  else
    return true
  end
end

p leap_year?(2004)