# Understand the problem : 
# Write a method that deletes the vowels from the str array entered.

# Set up your test cases
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Describe your inputs, outputs, and data structures
# input: an array containing strings
# output: an array containing strings with the vowels removed.

# Describe your algorithm
# Iterate through elements, then iterate through each char, if the Constant VOWELS mactched the l char, then it is
# is set to return an empty string, otherwise the l char is return and then joined for each element.

# Delete vowels

# Write a method that takes an array of strings, and returns an array of 
# the same string values, except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# -------------------------------------------------------------------------------------
# Begin coding:

VOWELS = %w(a e i o u)

def remove_vowels(str_arr)
  str_arr.map { |el| el.chars.map { |l| VOWELS.include?(l.downcase) ? '' : l }.join }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']


