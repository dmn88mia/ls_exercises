# Understand the problem : 
# Takes one arguement that contains an array of integers that returns the average.

# Set up your test cases
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# Describe your inputs, outputs, and data structures
# An array of integers.
# returns the average of the array of integers.

# Describe your algorithm
# I will iterate through the array. Through each iteration I will add the sum of each integer to
# a variable name total. Once all numbers are summed up. I will use the size method to deterimine
# the amount of integers in the array and divide that by the variable containing the sum. 

# Array Average

# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# -------------------------------------------------------------------------------------
# Begin coding:

def average(arr)
  arr.each_with_object({sum: 0}) {|i, h| h[:sum] += i }.values.first.to_f / arr.size
end

def average(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum.to_f / arr.size
end

def average(arr)
  arr.inject(0, :+).to_f / arr.size
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])


