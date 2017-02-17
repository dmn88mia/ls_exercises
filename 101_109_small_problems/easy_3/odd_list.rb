# Understand the problem : 
# Return the 1,3,5 etc values in an arr given

# Set up your test cases
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# Describe your inputs, outputs, and data structures
# input will be an array
# output will be the 1,3,5th on so on elements in the array

# Describe your algorithm
# iterate through the array and if the index is even, save it to
# an new array the will be returned. 

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