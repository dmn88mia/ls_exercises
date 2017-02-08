# Understand the problem : 
# To count the number of vehicle occurrences in the array.

# Set up your test cases
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.

# Describe your inputs, outputs, and data structures
# The input will be a string
# It will print/puts true if the the string is reversed successfully. 

# Describe your algorithm
# I have split the string into an array of string words. After splitting it I apply
# the each method to iterate the split string. I have set a new array that will capture
# each string/word that is being iterated while setting it in reverse order in my new
# array called reversed_string. I will be using the insert method and adding these strings/words
# by negative indexes along with a counter. The result will give me an array that contains
# the words in reversed order. Finally I join the array and the string is now reversed.


# Reverse It (Part 1)

# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.


# -------------------------------------------------------------------------------------
# Begin coding:
def reverse_sentence(string)
  reversed_string = []
  counter = -1

  string.split(' ').each do |word|
    reversed_string.insert(counter, word) 
    counter -= 1
  end
  # p reversed_string.join(' ')
  puts true if reversed_string.join(' ') == string.split.reverse.join(' ')
end

reverse_sentence('')
reverse_sentence('Hello World')
reverse_sentence('Reverse these words')
