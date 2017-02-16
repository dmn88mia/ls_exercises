# Understand the problem : 
# Create method that returns the power of a number entered by a user.

# Set up your test cases
# power_to_nth(3,3)
# => 27

# Describe your inputs, outputs, and data structures
# input will be two integers
# the return value will be the power to the nth number


# Describe your algorithm
# map through an array using the power parameter,this will be used to multiply
# the number n times depedning on the integer entered by the user for power.
# Using the multiply method I use result which has been set as 1 to multpily 
# that by the number on which is the first parameter. That result will be the
# new value of result which then we multiply by the 1st parameter entered in the
# power_to_nth and so on until the itereation is complete, leaving us with an
# array of numbers that have been multiplied by the 1st parameter in power_to_nth.
# Lastly I use pop to grab the last number in the array and set it as the final 
# result for the method return value. 

# Exclusive Or

# The || operator returns true if either or both of its operands are true, 
# false if both operands are false. The && operator returns true if both of its 
# operands are true, and false if either operand is false. This works great until 
# you need only one of two conditions to be true, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, 
# and returns true if exactly one of its arguments is true, false otherwise.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# -------------------------------------------------------------------------------------
# Begin coding:

def xor?(arg1, arg2)
  arg1 && arg2 ? false : arg1 || arg2
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 
p xor?(true, false)