# Understand the problem : 
# Return true if the string passed as an 
# argument is a palindrome, false otherwise. It should be case
# sensitive and ignore all non-alphanumeric chars.

# Set up your test cases
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# Describe your inputs, outputs, and data structures
# input will be a string
# true or false if it argument is palindrome

# Describe your algorithm
# call reverse on argument and compare to original argument using gsub
# Or iterate through string after calling chars on string. downcase
# the char if it is including in my variable alphanumeric. If it runs
# into a non-aplpanumeric then it will return nil. After the iteration
# is complete I will have an array full of of downcase chars and nils
# that were non-alpanumeric. We then call compact to remove the nils and join
# the array to return a string and use that as the argument passed into
# palindrome? method.

# Palindromic Strings (Part 2)

# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# -------------------------------------------------------------------------------------
# Begin coding:

def palindrome?(obj)
  obj.reverse == obj
end

def real_palindrome?(str)
  new_str = str.downcase.gsub(/[^0-9a-z]/i, '')
  palindrome?(new_str)
end

# Or --------------------------------------------------------------------------------------------------

def real_palindrome?(str)
  alphanumeric = ('a'..'z').to_a + ('0'..'9').to_a + (0..9).to_a 
  new_str = str.chars.map { |char| char.downcase if alphanumeric.include?(char.downcase) }.compact.join 
  palindrome?(new_str)
end

# Or --------------------------------------------------------------------------------------------------

def real_palindrome?(str)
  alphanumeric = ('a'..'z').to_a + ('0'..'9').to_a + (0..9).to_a 
  new_str = str.downcase
  new_str.chars.each { |char| new_str.delete!(char) unless alphanumeric.include?(char) }
  palindrome?(new_str)
end

p real_palindrome?('madam') # == true
p real_palindrome?('Madam') # == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") # == true # (only alphanumerics matter)
p real_palindrome?('356653') # == true
p real_palindrome?('356a653') # == true
p real_palindrome?('123ab321') # == false