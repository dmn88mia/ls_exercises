# Understand the problem : 
# Write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result
# (the result should never have consecutive spaces).

# Set up your test cases
# cleanup("---what's my +*& line?") == ' what s my line '

# Describe your inputs, outputs, and data structures
# input will be a string
# output: a string that has no spaces in a row

# Describe your algorithm
# Iterate through the str.chars. If the char is a letter then return a the char, if not then return a space.
# Next: iterate through the new array containing spaces and letters only. If the char and the next index are spaces
# then return the word 'delete'. This will leave an array that contains no spaces in a row. Only the word 'delete'
# will be repeated in a row, 2 or more times. Then call the delete method to delete the string 'delete'. Lastly
# join the array for our desired output

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

