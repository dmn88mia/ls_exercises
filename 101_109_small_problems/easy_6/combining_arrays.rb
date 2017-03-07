# Understand the problem : 
#  Write a method that takes two arrays as arguments and returns an array that contains all the values but with no duplicates. 

# Set up your test cases
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Describe your inputs, outputs, and data structures
# input: two arrays
# output: one array containing elements of the two arrays given, but no duplicates

# Describe your algorithm
# add both array together to have one multidimensional array, then call flatten to form one array and save that in a varaible called arrays.
# Next, have a new empty array that will have be recieving elements of the array 'arrays' if it is not already contained in the one_array variable, this
# will only take in elements that are not already in the one_array variable.

# Combining Arrays

# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the 
# values from the argument Arrays. There should be no duplication of values in the returned Array, 
# even if there are duplicates in the original Arrays.

# Example

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


# -------------------------------------------------------------------------------------
# Begin coding:


def merge(arr1, arr2)
  arrays = (arr1 + arr2).flatten
  one_array = []
  arrays.each { |n| one_array << n unless one_array.include?(n) }
  one_array
end

# Or

def merge(arr1, arr2)
  arrays = (arr1 + arr2).flatten
  one_array = []
  idx = 0
  while idx < arrays.size
    one_array << arrays[idx] unless one_array.include?(arrays[idx])
    idx += 1
  end

  one_array
end

# Or LS

def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9])