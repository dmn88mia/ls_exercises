# Understand the problem : 
# The method takes one arguement; integer or float. The number can be pos or neg.
# The method will return true if the absolute value is odd.   

# Set up your test cases
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false

# Describe your inputs, outputs, and data structures
# The input will be an integer or float
# It will return true if the absolute value is odd and false if not.

# Describe your algorithm
# I will use the integer or float value given and use the % operator
# to check if a number is even or odd and return true or false. The % operator
# gives the remainder of a number divided by another number.

# Further Exploration
# Using the remainder operator does not return the absolute value. In this case
# if the number is negative I use an if statement to determine if the value of 
# the number is under 0 which would mean it is a negative value. If it is in fact
# negative number, I multiply by it a negative 1 and save that value which is now
# positive and call the remainder operator and check if it is divisable by 1 which
# results in it being negative. The method now will return a true or false depending
# on if the number is positive or negative.

# Odd

# Write a method that takes one argument in the form of an integer or a float; this argument may be either positive or negative. This method should check if a number is odd, returning true if its absolute value is odd. You may assume that only integers are passed in as arguments.

# Examples:

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# Keep in mind that you're not allowed to use #odd? or #even? in your solution.



# -------------------------------------------------------------------------------------
# Begin coding:

def is_odd?(num)
  num *= -1 if num < 0
  num.remainder(2) == 1 ? true : false
end

def is_odd?(num)
   (num.abs).remainder(2) == 1 ? true : false
end

def is_odd?(num)
  num % 2 == 1
  # or !(num % 2 == 0)
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
