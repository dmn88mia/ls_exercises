# Understand the problem : 
# print whether or not the last number is included in the array

# Set up your test cases

# Describe your inputs, outputs, and data structures
# An array
# Outputs a msg that states whether the last num is in the
# the array.


# Describe your algorithm
# Create a loop that pushes the the 6 numbers into an array. After gathering the
# 6 numbers I will remove and save the last number in the array and with that
# use include? to see if the number was mentioned in the first 5.

# -------------------------------------------------------------------------------------
# Begin coding:



def num_appear?(array)
  num = array.pop
  array.include?(num) ? puts("The number #{num} appears in #{array}.") : puts("The number #{num} does not appear in #{array}.")
end

list = %w(1st 2nd 3rd 4th 5th last).map do |str|
  puts "Enter the #{str} number:"
  answer = ''
  loop do
    answer = gets.chomp
    break if answer.to_i.to_s == answer
    puts "That is not a number, please enter a number:"
  end
  answer = answer.to_i
end

num_appear?(list)

# Or ---------------------------------------------------------------------------------------------------------------------------

def num_appear?(array)
  num = array.pop
  array.include?(num) ? puts("The number #{num} appears in #{array}.") : puts("The number #{num} does not appear in #{array}.")
end

list = []

%w(1st 2nd 3rd 4th 5th last).each_with_index do |str|
  puts "Enter the #{str} number:"
  answer = ''
  loop do
    answer = gets.chomp
    break if answer.to_i.to_s == answer
    puts "That is not a number, please enter a number:"
  end
  answer = answer.to_i
  list << answer
end

num_appear?(list)

# # # Or ---------------------------------------------------------------------------------------------------------------------------

def num_appear?(array)
  num = array.pop
  array.include?(num) ? puts("The number #{num} appears in #{array}.") : puts("The number #{num} does not appear in #{array}.")
end

list = []
sequence = ['1st', '2nd', '3rd', '4th', '5th', 'last']
counter = 0

loop do
  break if list.size == 6
  puts "Enter the #{sequence[counter]} number:"
  answer = ''
  loop do
    answer = gets.chomp
    break if answer.to_i.to_s == answer
    puts "That is not a number, please enter a number:"
  end
  answer = answer.to_i
  list << answer
  counter += 1
end

num_appear?(list)