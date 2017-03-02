# Understand the problem : 
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array 
# of those Integers sorted based on the English words for each number:

# Set up your test cases
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# Describe your inputs, outputs, and data structures
# input will be an array
# output: an array that is in alpabetical order determined on the string word of the integer

# Describe your algorithm
# pair the integer with the string represnting word. Push that into an array. Then sort that array with the string comparison, since they are paired
# it will return the pairs in aplabetical order, Then I flatten the array which leaves integers and strings, the integers at this point are still in order by aplabetical order
# Last I used select to choose the integers only.

# Alphabetical Numbers

# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# -------------------------------------------------------------------------------------
# Begin coding:

WORD_NUM = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  pairs = array.each_with_object([]) { |idx, arr| arr << [idx, WORD_NUM[idx]] }
  order = pairs.sort { | a, b | a[1] <=> b[1] }.flatten.select { |n| n.to_s.to_i == n }
end

def alphabetic_number_sort(array)
  array.each_with_object([]) { |idx, arr| arr << [idx, WORD_NUM[idx]] }.sort { | a, b | a[1] <=> b[1] }.to_h.keys
end

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end
p alphabetic_number_sort((0..19).to_a)