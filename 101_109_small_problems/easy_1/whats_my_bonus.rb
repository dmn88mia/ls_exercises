# Understand the problem : 
# depending on the boolean, it will return a bonus.

# Set up your test cases
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

# Describe your inputs, outputs, and data structures
# an integer and a boolean to determine if a bonus will be given.
# returns 0 or half the bonus if the bonus is set to true

# Describe your algorithm
# A one line if statement, if bonus is true we divide the integer by two. If it is
# set to false then we return 0.

# What's my Bonus?

# Write a method that takes two arguments, a positive integer and a boolean, and 
# calculates the bonus for a given salary. If the boolean is true, the bonus should 
# be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.



# -------------------------------------------------------------------------------------
# Begin coding:

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) #== 1400
puts calculate_bonus(1000, false) #== 0
puts calculate_bonus(50000, true) #== 25000