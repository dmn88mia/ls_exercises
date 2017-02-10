# Understand the problem : 
# Takes one integer to return the sum of each number in the integer

# Set up your test cases
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# Describe your inputs, outputs, and data structures
# An integer
# returns the sum of the numbers combined in the integer

# Describe your algorithm
# Will call the to_s method to turn into a string so that the chars method is accessible on the 
# integer, so that it returns an array. Once having an array we iterate with map to return an
# arr full of integers that were changed from string to integers with to_i through map's iteration
# Finally we call inject to add the sum of the arr.

# Sum of Digits

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).


# -------------------------------------------------------------------------------------
# Begin coding:

def sum(number)
  number.to_s.chars.map(&:to_i).inject(0, :+)
end

p sum(23)