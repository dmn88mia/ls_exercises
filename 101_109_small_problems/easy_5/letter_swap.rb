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

# Letter Swap

# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'


# -------------------------------------------------------------------------------------
# Begin coding:

# str = 'Abcde'

def swap(str)
  last_first = str.split.map do |word| 
                         first, last = [word[0], word[-1]]
                         word[0] = last
                         word[-1] = first 
                         word  
                       end
  last_first.join(' ')
end


p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'

# How come our solution does not use the return value of swap_first_last_characters? Suppose we had this method:
# This would only work if the str has one word, if it has more than one, than only the first letter and the last letter
# of the first and last in the string would change, not each word.



