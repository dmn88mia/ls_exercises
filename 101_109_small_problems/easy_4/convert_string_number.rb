# Understand the problem : 
# Convert a string to a number without using helper methods.

# Set up your test cases
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Describe your inputs, outputs, and data structures
# input will be a a string/number
# output will be a number representive of the string/number

# Describe your algorithm
# Iterate through the string and return a new array using map, we will use fetch to pull the correct number
# from the hash calling fetch on the hash and using char to retrieve the numbers.
# Next we must find the places value of the number in order to go on to the next piece of code. To
# do this, I count the size of the array, ie. '4321' is a thousandths place so we iterate it using the
# times method minus one to get the correct multiplier value. So for example, in '4321'. I will start
# out with a multiplyer value of 1, in this case '4321' is 4 chars long so for each iteration I will
# multiply by 10 , but I must minus it by one for it to iterate 4 times only. This will leave us with
# a final multiplyer value of 1000. Now on to the next piece of code.
# Now that we have the correct multiplyer value we can continue. For the first value, in this case
# '4' in '4321' , it is in the thousandths place so we start out multiplying it and saving that
# value to an array. After saving that value, we need to decrement the multiplyer by 10 to gain the
# next place in value which will be the hundreths value and so on until the loop is at the ones place.
# After the iteration, we will have a new array containing each digit multiplied by their place 
# value. Finally we call inject to add them all together, resulting in one full number that is
# the equivelent of the input string.


# Convert a String to a Number!

# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_int and Integer behave similarly. In this exercise, you are going to create your own conversion method.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Examples

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570


# -------------------------------------------------------------------------------------
# Begin coding:

COVERSION = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
              '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9  
            }
 

def string_to_integer(string)
  nums = string.chars.map { |char| COVERSION.fetch(char) }
  multiplyer = 1
  (nums.size - 1).times { multiplyer *= 10 } # I used this to determine the ones/tenths/hundredths place by counting the array size and incrementing the multiplyer value.
  nums_join = nums.each_with_object([]) do |n, arr|
                arr << sum = n * multiplyer # Once I have the correct ones/tenths/hundredths place I can retrieve the value.
                multiplyer /= 10 # Now we go down on the place values, we must do this so once we add the values we get our desired output.
              end
  nums_join.inject(0,:+)
end

# I used to_a to create my own conversion system instead of using the constant CONVERSION

def string_to_integer(string)
  conversion = {}
  ('0'..'9').to_a.each_with_index { |char, index| conversion[char] = index }
  nums = string.chars.map { |char| conversion.fetch(char) }

  multiplyer = 1
  (nums.size - 1).times { multiplyer *= 10 }
  nums_join = nums.each_with_object([]) do |n, arr|
                arr << sum = n * multiplyer
                multiplyer /= 10
              end
  nums_join.inject(0,:+)

end

# Here I set up an array and did not use to_a to create my own conversion at first, after setting the 'string_nums' array
# I iterated through the array and created a conversion hash

def string_to_integer(string)
  string_nums = ['0','1','2','3','4','5','6','7','8','9']
  conversion = {}
  string_nums.each_with_index { |char, index| conversion[char] = index }
  nums = string.chars.map { |char| conversion.fetch(char) }

  multiplyer = 1
  (nums.size - 1).times { multiplyer *= 10 }
  nums_join = nums.each_with_object([]) do |n, arr|
                arr << sum = n * multiplyer
                multiplyer /= 10
              end
  nums_join.inject(0,:+)
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570


HEXADECIMALS = {
                 '0'=>0, '1'=>1, '2'=>2, '3'=>3, '4'=>4,
                 '5'=>5, '6'=>6, '7'=>7, '8'=>8, '9'=>9,
                 'A'=>10, 'B'=>11, 'C'=>12, 'D'=>13,
                 'E'=>14, 'F'=>15
               }


def hexadecimal_to_integer(str)
  nums = str.chars.map { |char| HEXADECIMALS.fetch(char.upcase) }
  sum = nums.reverse.map.with_index { |n, idx| n * (16 ** idx) }.inject(0,:+)
end

p hexadecimal_to_integer('4d9f')
p hexadecimal_to_integer('7de')



