# Pseudocode
# input: An array
# output: A grouped array of at least 3-5 students in every group
# steps:
# 1. Count the amount of students in the array
# 2. Divide that total amount into groups of 5
# 3. UNTIL the last group is greater than 2, we must add a student to it from the previous group.

# Initial Solution
=begin
cohort_people = ["Adell Hanson-Kahn","Alex DeLaPena","Bison Hubert","Caitlyn Yu","Caroline Artz","Celeen Rusk","Gary Sperka","Iulia Shoimaru","James Hwang","John Dees","Katy Duncan","Laura Crowe","Lorena Mesa","Matt Higgins","Michael Hamel","Morgan McCrory","Morgan O'Leary","Neal Peters","Sarah Taurchini","Jack Abernethy","Mohammad Amin","Zollie Barnes","Reuben Brandt","Dana Breen","Breton Burnett","Saundra Vanessa Caneda","Luis De Castro","Nicolette Chambers","Kerry Choy","Nick Davies","KB DiAngelo","Katherine DiAngelo","Adrian Diaz","David Diaz","Bob Dorff","Michael Du","Paul Dynowski","Jenna Espezua","Sean Fleming","Jennifer Gilbert","Marcel Haesok","Albert Hahn","Arthur Head","Jonathan Huang","Thomas Huang","Alex Jamar","Kevin Jones","Steven Jones","Cole Kent","Coleby Kent","Caroline","Caroline Kenworthy","Calvin Lang","Yi Lu","David Ma","Sean Massih","Tom McHenry","Alex Mitzman","Lydia Nash","Brenda Nguyen","Matthew Oppenheimer","Mason Pierce","Joe Plonsker","Mira Scarvalone","Joseph Scott","Chris Shahin","Benjamin Shpringer","Lindsey Stevenson","Phil Thomas","Philip Thomas","Gary Tso","Ting Wang","Monique Williamson","Regina Wong","Hanah Yendler","Person One","Person Two"]

def acct_groups(cohort)
  array = []
  cohort.each_slice(5) { |person| array.push(person) }
    until array[-1].length > 2
      array[-1].push(array[-2].pop)
    end
    array
end

p acct_groups(cohort_people) #Driver Test Code
=end
# Refactored Solution
cohort_people = ["Adell Hanson-Kahn","Alex DeLaPena","Bison Hubert","Caitlyn Yu","Caroline Artz","Celeen Rusk","Gary Sperka","Iulia Shoimaru","James Hwang","John Dees","Katy Duncan","Laura Crowe","Lorena Mesa","Matt Higgins","Michael Hamel","Morgan McCrory","Morgan O'Leary","Neal Peters","Sarah Taurchini","Jack Abernethy","Mohammad Amin","Zollie Barnes","Reuben Brandt","Dana Breen","Breton Burnett","Saundra Vanessa Caneda","Luis De Castro","Nicolette Chambers","Kerry Choy","Nick Davies","KB DiAngelo","Katherine DiAngelo","Adrian Diaz","David Diaz","Bob Dorff","Michael Du","Paul Dynowski","Jenna Espezua","Sean Fleming","Jennifer Gilbert","Marcel Haesok","Albert Hahn","Arthur Head","Jonathan Huang","Thomas Huang","Alex Jamar","Kevin Jones","Steven Jones","Cole Kent","Coleby Kent","Caroline","Caroline Kenworthy","Calvin Lang","Yi Lu","David Ma","Sean Massih","Tom McHenry","Alex Mitzman","Lydia Nash","Brenda Nguyen","Matthew Oppenheimer","Mason Pierce","Joe Plonsker","Mira Scarvalone","Joseph Scott","Chris Shahin","Benjamin Shpringer","Lindsey Stevenson","Phil Thomas","Philip Thomas","Gary Tso","Ting Wang","Monique Williamson","Regina Wong","Hanah Yendler","Person One","Person Two"]

def acct_groups(cohort)
  new_group = []
  cohort.each_slice(5) { |person| new_group.push(person) }
    until new_group[-1].length > 2
      new_group[-1].push(new_group[-2].pop)
    end
    new_group
end

p acct_groups(cohort_people) #Driver Test Code

# Reflection
=begin
What was the most interesting and most difficult part of this challenge?
I actually had a difficult time at first with both my pseudocode and intial solution. Overthinking on how will I divide/modulus to my solution.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, although I have trouble trying to over-analyze my pseudocode and how my code will be written, I think it helps that im realizing its a weakness.
Was your approach for automating this task a good solution? What could have made it even better?
My initial approach was not a good solution, as I was going to have too many conditional statements based on what would be divided and how much would be remaining. Therefore, I simplified my approach by just implementing the "each_slice", as I couldn't even figure out my mathematical solution.
What data structure did you decide to store the accountability groups in and why?
Definitely went with an array, as I saw no purpose of needing names to my groups(keys of a Hash) and having to call them.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby
methods?
Unfortunately my intial solution was basically my refactored solution, but I did learn that you can almost always make your code easier for readability by changing variable names to be more descriptive of what it is. I did learn how to use the "each_slice" method and get a lot more familar with "pop" in this challenge.
=end