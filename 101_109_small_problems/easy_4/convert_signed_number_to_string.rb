# Understand the problem : 
# Convert a number into a string with no helper methods.

# Set up your test cases
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# Describe your inputs, outputs, and data structures
# input will be an integer
# a string that represents the number entered.

# Describe your algorithm
# The only thing that changed from the previous exercise was saving a sign variable to hole
# a '-' or '+' to return with a neg or pos number
# Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'


# -------------------------------------------------------------------------------------
# Begin coding:

COVERSION = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
              5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'  
            }
POS = '+'
NEG = '-'

def neg_to_pos(num) # In order for my mathematic equation to fucntion, I need a positve integer, this returns pos. number
  num < 0 ? (num *= -1) : num  
end

def sign(num)
  num > 0 ? POS : NEG
end

def integer_to_string(num)
  return '0' if num == 0
  digits = []
  sign = sign(num)
  num = neg_to_pos(num)

  while num >= 1       # The % operator will knock off the last num that will be stored in an array 'digits'.
    digits << num % 10 # We must decrement by / 10 to reach the next number place,ie. we start off '4321' with the 4 which is the thousandths place. So to get to the hundreths place 
    num /= 10          # we decrement by / 10 and save it as the new value and continue until the num is less than 0, resulting in an arr full of the numbers in reverse order.
  end                  
  # Now we need to reverse the order, return a new array after fetching the correct strings and joining,and finally prepending a '-' or '+' if the num is pos or neg. 
  digits.reverse.map { |num| COVERSION.fetch(num) }.join.prepend(sign)
end  

# # Or LS solution

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end


p integer_to_string(-1) #== '-1'
p integer_to_string(-0) #== '0'
p integer_to_string(5000) #== '5000'

