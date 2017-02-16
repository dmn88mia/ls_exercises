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


def count_char(str)
  words = str
  chars = words.delete(' ').chars.map { |l| l }.count
end

# Or 

def count_char(words)
  if words.chars.include?(' ')
    chars = words.gsub(' ','').chars.map { |l| l }.count
  else
    words.chars.map { |l| l }.count
  end
end

# Or

def count_char(words)
  words.split.join.size
end

# Or

def count_char(words)
  temp = words.chars
  idx = 0

  while idx < temp.size
    temp.delete(temp[idx]) if temp[idx] == ' '
    idx += 1
  end

  temp.join.size
end

# Or

def count_char(words)
  temp = words.chars
  idx = 0

  while temp.include?(' ')
    temp.delete(temp[idx]) if temp[idx] == ' '
    idx += 1
  end

  temp.join.size
end

puts "Please write word or multiple words:"
word_s = gets.chomp
puts "There are #{count_char(word_s)} in \"#{word_s}\""
