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

def length(num)
  length = 0

  while num > 1
    num *= 0.1
    length += 1
  end

  length
end

def integer_to_string(num)
  digits = []
  clone = num
  
  length(clone).times do
    digits << clone % 10
    clone /= 10
  end

  num == 0 ? '0' : digits.reverse.map { |num| COVERSION.fetch(num) }.join
end  

# Or LS solution

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'