# Understand the problem : 
# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half
# and second half of the original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.

# Set up your test cases
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# Describe your inputs, outputs, and data structures
# input: one array
# output: one array containing the original array in halves.

# Describe your algorithm
# Dividing the arr.size by 2.0 and rounding will give us the amount of elements for the first half, doing the same for the second half by / 2.0 and using to_i to give us the remaining elements. Now 
# I multiply by -1 so it has the negative index to grab the second half of the elements. If the array.size is 1, the second half el will be set to 0, once adding the two arrays for the final output, if the 
# second array is 0 it will return an emtpy array. This will allow all of our test to pass.

# Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]


# -------------------------------------------------------------------------------------
# Begin coding:


def halvsies(arr)
  first_half_el = (arr.size / 2.0).round - 1 
  second_half_el = arr.size == 1 ? 0 : (arr.size / 2.0).to_i * -1
  first_half = arr[0..first_half_el]
  second_half = second_half_el == 0 ? [] : arr[second_half_el..-1]

  halvsies = [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]];''
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]






 