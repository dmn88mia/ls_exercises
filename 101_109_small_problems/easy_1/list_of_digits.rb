# Understand the problem : 
# The method takes a positive integer as the arguement and wants
# it to return a list of the digits in the number.

# Set up your test cases
# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

# Describe your inputs, outputs, and data structures
# The input will be a positive integer.
# It will return a list of the digits in the number entered in the parameter.

# Describe your algorithm
# I will convert the integer into a string using to_s so I can access the chars method
# to return an array. I will iterate through the array and convert each string back into an integer
# and return an array that contains integers only.


# List of Digits

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]
# All of the tests above should print true.


# -------------------------------------------------------------------------------------
# Begin coding:

def digit_list(num)
   num.to_s.chars.map! { |num| num.to_i }
end

def digit_list(num)
  counter = num
  arr = []
    loop do
      break if counter == 0
      remainder = counter.divmod(10)
      arr << remainder[1]
      counter = remainder[0]
    end
  arr.reverse
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)
