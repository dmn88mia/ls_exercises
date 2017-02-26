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
# First we need to determine the length of the number. To do this I multiplied the number
# by 0.1% which take cuts down the number by one place. Once the number is reduced to nothing
# but decimals we compare it 1, once it is less than 1 we have our length which will be used 
# in our next method.
# moduling 'If even a word lol' the number by 10 will give us each number which is stored in 
# an array. Then we divide by 10 to reach the next place number. We use the times method here
# and give it the length method which gives us the number of times we should run the block
# in order to fill out digits array. If the number entered is a 0 we will return 0. Otherwise
# we mao a new array and fetch the correct values from the conversion hash. This will give
# us an array of string/digits. After we join them, we reach our desired output. 

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

def integer_to_string(num)
  digits = []
  clone = num
  
  while clone >= 1
    digits << clone % 10
    clone /= 10
  end

  num == 0 ? '0' : digits.reverse.map { |num| COVERSION.fetch(num) }.join
end  

# Or LS solution

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


p integer_to_string(1) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'


# Unfactored
# COVERSION = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
#               5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'  
#             }
# POS = '+'
# NEG = '-'

# def neg_to_pos(num) # In order for my mathematic equation to fucntion, I need a positve integer, this returns pos. number
#   num < 0 ? (num *= -1) : num  
# end

# def length(num)
#   length = 0
#   num = neg_to_pos(num) # Will return a positive num

#   while num >= 1 # Will give us the length of the num
#     num *= 0.1   # After each mutliplication, the places value(ones, hundreths, etc) will be narrowed down until it is finally 0  
#     length += 1  # Once we reach num less than 0 we will have the length of the num
#   end

#   length
# end

# def integer_to_string(num)
#   return '0' if num == 0
#   digits = []

#   num < 0 ? positive = false : positive = true
#   num = neg_to_pos(num)

#   length(num).times do # We iterate through the length of the number.
#     digits << num % 10 # The % operator will knock off the last num that will be stored in an array 'digits'.
#     num /= 10          # We must decrement by / 10 to reach the next number place,ie. we start off '4321' with the 4 which is the thousandths place. So to get to the hundreths place 
#   end                  # we decrement by / 10 and save it as the new value and continue for the length of the num. It will result in an arr full of the numbers we need in reverse order.

#   # Now we need to reverse the order, return a new array after fetching the correct strings and joining,and finally prepending a '-' or '+' if the num is pos or neg. 
#   digits.reverse.map { |num| COVERSION.fetch(num) }.join.prepend(positive == false ? NEG : POS)
# end  

# p integer_to_string(-1) #== '-1'
# p integer_to_string(0) #== '0'
# p integer_to_string(5000) #== '5000'