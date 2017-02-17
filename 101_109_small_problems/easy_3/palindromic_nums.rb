# Understand the problem : 
# Return true if integer is palindromic or false if not.

# Set up your test cases
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# Describe your inputs, outputs, and data structures
# input will be a number

# Describe your algorithm
# Convert number to string

# Palindromic Numbers

# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# -------------------------------------------------------------------------------------
# Begin coding:

def palindrome?(obj)
  obj.reverse == obj
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end