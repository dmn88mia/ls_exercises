# Understand the problem : 
# Convert a string to a number without using helper methods.

# Set up your test cases
# p string_to_integer_signed('-4321')
# p string_to_integer_signed('+1234')
# p string_to_integer_signed('6789')

# Describe your inputs, outputs, and data structures
# input will be a a string/number
# output will be a number representive of the string/number

# Describe your algorithm
# Used the method string_to_integer in the previous exercise. Create a new method. Save the first 
# character in the string and assign it to a variable called sign. Then delete (with mutation method
# delete!) the first string char if it is a '-' or '+'. If the sign varialbe is assigned to a '-',
# call the string_to_integer method on the string and multiply it by -1. If it does not, then 
# we call the string_to_integer method which will give us a positive outcome whether the string
# had a '+' or nothing in front.

# Convert a String to a Signed Number!

# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100


# -------------------------------------------------------------------------------------
# Begin coding:

COVERSION = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
              '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9  
            }

def string_to_integer_signed(string)
  positive = true
  nums = string.chars.map.with_index do |char, idx| 
                                       positive = false if string[idx] == '-'  
                                       COVERSION.fetch(char) unless string[idx] == '-' || string[idx] == '+' 
                                     end
                                     
  nums.shift if string[0] == '+' || string[0] == '-'
  multiplyer = 1
  (nums.size - 1).times { multiplyer *= 10 } # I used this to determine the ones/tenths/hundredths place by counting the array size and incrementing the multiplyer value.
  
  nums_join = nums.each_with_object([]) do |n, arr|
                arr << sum = n * multiplyer # Once I have the correct ones/tenths/hundredths place I can retrieve the value.
                multiplyer /= 10 # Now we go down on the place values, we must do this so once we add the values we get our desired output.
              end
  positive ? nums_join.inject(0, :+) : (nums_join.inject(0, :+) * -1)
end

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

def string_to_integer_signed(string)
  sign = string[0]
  string.delete!(string[0]) if string[0] == '-' || string[0] == '+' 
  sign == '-' ? (string_to_integer(string) * -1) : string_to_integer(string)
end


p string_to_integer_signed('-4321')
p string_to_integer_signed('+1234')
p string_to_integer_signed('6789')