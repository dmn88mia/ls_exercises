# Understand the problem : 
# Return true if the string passed as an 
# argument is a palindrome, false otherwise.

# Set up your test cases
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Describe your inputs, outputs, and data structures
# input will be an array or string
# true or false if it argument is palindrome

# Describe your algorithm
# call reverse on argument and compare to original argument

# Palindromic Strings (Part 1)

# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. (A palindrome reads the same forwards and backwards.) Case matters, and all characters should be considered.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# -------------------------------------------------------------------------------------
# Begin coding:

def palindrome?(obj)
  obj.reverse == obj
end

def palindrome?(str)
  reverse = []
  idx = -1

  while idx > ((str.chars.size * -1) -1)
    reverse << str.chars[idx]
    idx -= 1
  end

  reverse.join == str
end

def palindrome?(str)
  idx = 0
  reverse = str.chars.map do |char|
              idx -= 1
              str.chars[idx]
            end
  reverse.join == str
end

p palindrome?('madam') # == true
p palindrome?('Madam') # == false          # (case matters)
p palindrome?("madam i'm adam") # == false # (all characters matter)
p palindrome?('356653') # == true


