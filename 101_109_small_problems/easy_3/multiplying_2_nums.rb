# Understand the problem : 
# return the amount of chars in a word or words without counting the spaces
# Then in a puts print out the chars amount and print the word or words.

# Set up your test cases
# multiply(1, 3) => 3

# Describe your inputs, outputs, and data structures
# input will be two integers
# the return value of the two integers multiplied


# Describe your algorithm
# multiply the parameters

# Multiplying Two Numbers

# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:

# multiply(5, 3) == 15
# -------------------------------------------------------------------------------------
# Begin coding:

def multiply(num1, num2)
  num1 * num2
end

p multiply(1, 3)

# Further Exploration

# For fun: what happens if the first 
# argument is an Array? What do you think is happening here?
# returns a new array containing the  elements that were multiplied 
# by the 2nd argument. example: [1,3] * 3 = [1,3,1,3,1,3]
