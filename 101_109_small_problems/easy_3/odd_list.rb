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

# Odd Lists

# Write a method that returns an Array that contains every other element of an 
# Array that is passed in as an argument. The values in the returned list 
# should be those values that are in the 1st, 3rd, 5th, and so on elements 
# of the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# -------------------------------------------------------------------------------------
# Begin coding:


def oddities(arr)
  odds = arr.select { |element| arr.index(element).even? }
end

def evenities(arr)
  odds = arr.select { |element| arr.index(element).odd? }
end

def oddities(arr)
  odds = []
  arr.each_with_index { |element, idx| odds << element if idx.even? }
  odds
end

def evenities(arr)
  evens = []
  arr.each_with_index { |element, idx| evens << element if idx.odd? }
  evens
end

def oddities(arr)
  idx = 0
  odds = []

  while idx < arr.size
    odds << arr[idx] if idx.even?
    idx += 1
  end

  odds
end

def evenities(arr)
  idx = 0
  evens = []

  while idx < arr.size
    evens << arr[idx] if idx.odd?
    idx += 1
  end
  
  evens
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []

p evenities([2, 3, 4, 5, 6]) #== [3, 5]
p evenities(['abc', 'def']) #== ['def']
p evenities([123]) #== []
p evenities([]) #== []
# arr = [1,3,4]
# p arr.index(1)