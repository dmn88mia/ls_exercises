# Understand the problem : 
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of 
# words of different sizes.

# Set up your test cases
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Describe your inputs, outputs, and data structures
# input will be a string
# output: a  hash that counts the number of words of different sized

# Describe your algorithm
# Iterate through the string,set the word size to 0 if they word size doesn't exist. If it does exist then increment it by 1 to count how many in total oare in the sentence.

# Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of 
# words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 } 4,5,3,6 ie. count how many 4,5,3,6 letter words there are etc
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 } 3,6,7,3,3,3,3,7
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 } 6,2,4
# word_sizes('') == {}

# -------------------------------------------------------------------------------------
# Begin coding:


# str = "What's up doc?"
# p str.split
def word_sizes(str)
  hash = str.split.each_with_object({}) do |word, hash|
     hash[word.size] = 0 unless hash.keys.include?(word.size) 
     hash[word.size] += 1 
  end
end

# Or with loop do ----------------------------------------------

def word_sizes(str)
  hash = {}
  idx = 0

  loop do 
    break if idx == (str.split.size)
    word = str.split[idx]
    hash[word.size] = 0 unless hash.keys.include?(word.size)
    hash[word.size] += 1
    idx += 1
  end

  hash
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}







