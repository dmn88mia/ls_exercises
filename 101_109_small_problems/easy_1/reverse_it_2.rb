# Understand the problem : 
# To reverse only the words that contain 5 or more characters.

# Set up your test cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Describe your inputs, outputs, and data structures
# The input will be a string containing one or more words
# It will print/puts the string and only reverse the words that are greater than
# five characters. 

# Describe your algorithm
# I will split the string into an array and iterate it. Using an if statement I will
# push the string into a new array, depending if it has more than 4 characters I will
# reverse it with the reverse method, if not I will push the word without modification.

# Reverse It (Part 2)

# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with all five or more letter words reversed. Each string 
# will consist of only letters and spaces. Spaces should be included only when more 
# than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS



# -------------------------------------------------------------------------------------
# Begin coding:
def reverse_sentence(string)
  reversed_string = []
  
  string.split(' ').each do |word|
    if word.size > 4
      reversed_string << word.reverse
    else
      reversed_string << word
    end
  end
   
  reversed_string.join(' ')
end

puts reverse_sentence('Professional')
puts reverse_sentence('Walk around the block')
puts reverse_sentence('Launch School')
