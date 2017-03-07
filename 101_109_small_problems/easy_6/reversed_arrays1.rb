# Understand the problem : 
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument.
#  (The first Fibonacci number has index 1.)

# Set up your test cases
# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]

# list = []
# reverse!([]) # => []
# list == []


# Describe your inputs, outputs, and data structures
# input: an array
# output: The same arr object id but in reverse order

# Describe your algorithm
# create a clone of the array.  Iterate throught the clone and reassign the original array with the clone array elements if reverse order by manipulating the index.

# Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]

# list = []
# reverse!([]) # => []
# list == []

# -------------------------------------------------------------------------------------
# Begin coding:

# arr = [4,3,2,1]
# p arr.object_id
# p arr_clone = arr.clone #[4,3,2,1]
# p '----'
# arr_clone.each_with_index do |el, idx|
#   idx == 0 ? idx = -1 : idx = (idx * -1) - 1
#   arr[idx] = el
# end

def reverse!(list)
  list_clone = list.clone
  list_clone.each_with_index do |el, idx|
    idx == 0 ? idx = -1 : idx = (idx * -1) - 1
    list[idx] = el
  end
  list
end

# Or

def reverse!(list)
  list_clone = []
  idx = -1
  idx2 = 0

  while list != list_clone
    while list.size != list_clone.size
      list_clone << list[idx]
      idx -= 1
    end
    list[idx2] = list_clone[idx2]
    idx2 += 1
  end
  list
end

# Or LS solution

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

# p list = [1,2,3,4]
# p result = reverse!(list) # => [4,3,2,1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# p list = %w(a b c d e)
# p reverse!(list) # => ["e", "d", "c", "b", "a"]
# p list == ["e", "d", "c", "b", "a"]

# p list = ['abc']
# p reverse!(list) # => ["abc"]
# p list == ["abc"]

# p list = []
# p reverse!([]) # => []
# p list == []

