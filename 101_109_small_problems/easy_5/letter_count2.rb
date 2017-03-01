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
# Same as part one, except here we only counting the letters and no other chararacters, iterate through the word choose only the letters than use that word for the rest of the code.
# Iterate through the string,set the word size to 0 if they word size doesn't exist. If it does exist then increment it by 1 to count how many in total oare in the sentence.

# Give us your feedback
# Letter Counter (Part 2)

# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. 
# For instance, the length of "it's" is 3, not 4.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# -------------------------------------------------------------------------------------
# Begin coding:

APLHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def word_sizes(str)
  hash = str.split.each_with_object({}) do |w, hash|
     word = w.chars.map { |l| l if APLHABET.include?(l) }.join
     hash[word.size] = 0 unless hash.keys.include?(word.size) 
     hash[word.size] += 1 
  end
end

# Or LS solution

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}
