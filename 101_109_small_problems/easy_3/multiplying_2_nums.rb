# Understand the problem : 
# return the amount of chars in a word or words without counting the spaces
# Then in a puts print out the chars amount and print the word or words.

# Set up your test cases
# word_s = 'walk' 
# count_char(word_s) => 4
# word_s = "walk, don't run"
# count_char(word_s) => 13

# Describe your inputs, outputs, and data structures
# input will be a string
# out put will be the number of chars in that string


# Describe your algorithm
# iterate through the string after turning it into an array that deletes the
# spaces, then count the number of chars and return that number.

# Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

# -------------------------------------------------------------------------------------
# Begin coding:

def multiply(num1, num2)
  num1 * num2
end

p arr2 = multiply(1, 3)

# Further Exploration

# For fun: what happens if the first 
# argument is an Array? What do you think is happening here?
# returns a new array containing the  elements that were multiplied 
# by the 2nd arguement. example: [1,3] * 3 = [1,3,1,3,1,3]
