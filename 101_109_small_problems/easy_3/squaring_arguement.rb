# Understand the problem : 
# return the amount of chars in a word or words without counting the spaces
# Then in a puts print out the chars amount and print the word or words.

# Set up your test cases
# multiply(1, 3) => 3

# Describe your inputs, outputs, and data structures
# input will be two integers
# the return value of the two integers multiplied


# Describe your algorithm

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

# def square(num)
#   multiply(num, num)
# end

# square(3) 
# #=> 9

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

# p power_to_nth(5,5)


# p arr << num
def power_to_nth(num, power)
  result = 1
  final_result = (1..power).map { |n| result = multiply(result, num) }.pop
end

p power_to_nth(3,3)
# => 27