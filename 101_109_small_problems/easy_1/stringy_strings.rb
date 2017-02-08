# Understand the problem : 
# Take one arguement that returns alternating 1s and 0s, the length of the string should match 
# the integers, ie* a number 9 should result in 9 alternating 1s and 0s '101010101'

# Set up your test cases
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Describe your inputs, outputs, and data structures
# One positve integer
# return 1s and 0s depending on the positive integer entered.

# Describe your algorithm
# I have set a counter to determine whether we want the string to begin with a 1 or 0.
# I have also set an empty string that will be receiving the 1s and 0s through concatenation.
# Using the times method we iterate through the integer entered. Through each iteration
# I am converting the counter into a string and concatinating to the empty string. If the
# counter is set to 1 then it is subtracted by 1 to equal 0 for the next iteration so it
# continues alternating 1s and 0s. Or vice versa if it is set to 0 than it becomes a 1
# in the next iteration.

# Stringy Strings

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# -------------------------------------------------------------------------------------
# Begin coding:
def stringy(num, counter=1) 
  string = ''

  num.times do 
    string += counter.to_s
    counter == 1 ? counter -= 1 : counter += 1
  end

  string
end

# Or

# def stringy(size, char=1)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? char : (char == 1 ? 0 : 1)
#     numbers << number
#   end

#   numbers.join
# end

puts stringy(6,1) #== '101010'
puts stringy(9,1) #== '101010101'
puts stringy(4,0) #== '1010'
puts stringy(7,1) #== '1010101'

