# Understand the problem : 
# Write a method that takes an Array, and returns a new Array with the elements of the original list
 # in reverse order. Do not modify the original list.

# Set up your test cases
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 2, 3]                     # => true
# new_list == [3, 2, 1]                 # => true


# Describe your inputs, outputs, and data structures
# input: an array
# output: A new arr that is in reverse order of the original array

# Describe your algorithm
# Map through the array, return the elements from the original array in reverse order by setting the idx from -1 to the beginning of the array, -1,-2 etc
# Reversed Arrays (Part 2)

# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:

# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 2, 3]                     # => true
# new_list == [3, 2, 1]                 # => true

# -------------------------------------------------------------------------------------
# Begin coding:

def reverse(list)
  reverse = list.map.with_index do |el, idx|
    idx == 0 ? idx = -1 : idx = (idx * -1) - 1
    list[idx]
  end
end

# Or

def reverse(list)
  new_list_reversed = []
  idx = -1
  while new_list_reversed.size != list.size
    new_list_reversed << list[idx]
    idx -= 1
  end
  new_list_reversed
end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b c d e)) #== %w(e d c b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) #== []    

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1] 











