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

# Squaring an Argument

# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

# Example:

# square(5) == 25
# square(-8) == 64

# -------------------------------------------------------------------------------------
# Begin coding:

def multiply(num1, num2)
  num1 * num2
end

def power_to_nth(num, power)
  counter = 1
  result = 1
  while counter < power
    result = multiply(result, num)  
    counter += 1
  end
  result
end

def power_to_nth(num, power)
  result = 1
  (1..power).each { |n| result = multiply(result, num) }
  result
end

def power_to_nth(num, power)
  result = 1
  final_result = (1..power).map { |n| result = multiply(result, num) }.pop
end

p power_to_nth(3,3)
# => 27