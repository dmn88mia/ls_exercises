# Understand the problem : 
# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, and then returns
# the result of concatenating the shorter string, the longer 
# string, and the shorter string once again.

# Set up your test cases
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# Describe your inputs, outputs, and data structures
# input will be two strings of different lengths
# the return value will be the shorter str, longer, shorter by concatenating.

# Describe your algorithm
# Adding the short with the long and then the short string again for one string return value

# Short Long Short

# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"


# -------------------------------------------------------------------------------------
# Begin coding:

def short_long_short(str1, str2)
  str1.size > str2.size ? (str2 + str1 + str2) : (str1 + str2 + str1)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"