# Understand the problem : 
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and 
# after midnight, respectively. Both methods should return a value in the range 0..1439.

# Set up your test cases
# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') #== 'ebcdA'
# p swap('a') #== 'a'

# Describe your inputs, outputs, and data structures
# input will be a string
# output: a string that has changed each words first char to its last char and vice versa

# Describe your algorithm
# Split the string, save the first and last chars, then assign the first to the last char and vice versa and join the new array for a complete string.

# Clean up the words

# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that 
# returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic 
# characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '


# -------------------------------------------------------------------------------------
# Begin coding:
APLHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup(str)
  str_spaces = str.chars.map { |char| APLHABET.include?(char) ? char : ' ' }
 p final_str = str_spaces.map.with_index { |char, idx| char == ' ' && str_spaces[idx + 1] == ' ' ? 'delete' : char }
  final_str.delete('delete')
  final_str.join
end

p cleanup("---what's my +*& line?")

# Or LS solution

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

