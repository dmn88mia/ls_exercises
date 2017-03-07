# Understand the problem : 
# Write a method named include? that takes an Array and a search value as arguments. This method should
#  return true if the search value is in the array, false if it is not. You may not use the 
#  Array#include? method in your solution.

# Set up your test cases
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# Describe your inputs, outputs, and data structures
# input: one array and a search value
# output: true if the array contains the value or false if not

# Describe your algorithm
# Set the return value to false initially
# Iterate through the array and assing the return value to true if the value matches any of the elements in the array.
# End result will be false or true depending if the array contains the value

# Does My List Include This?

# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# -------------------------------------------------------------------------------------
# Begin coding:

def include?(arr, value)
  includes = false
  arr.each { |n| includes = true if n == value  }
  includes
end

# Or LS

def include?(array, value)
  !!array.find_index(value)
end

# Or LS

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false

