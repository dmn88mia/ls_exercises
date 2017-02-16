# Understand the problem : 
# print all operations combinations with the two numbers entered
# by user

# Set up your test cases

# Describe your inputs, outputs, and data structures
# input will be an array with two nums or two variables that contain integers
# output will be result of operations


# Describe your algorithm
# iterate through an array that asks for users two numbers and
# saves them to either an array or two variables. Then we
# that as the parameter for the method. In the method we iterate
# through the operations and access either the array or two variables
# Through each iteration we use the numbers and apply them with the operation
# to gather our final ouput of all operation combinations and
# print them out.

# -------------------------------------------------------------------------------------
# Begin coding:


def arithmetic(num1, num2)
  %w[+ - * / % **].each { |opr| puts "#{num1} #{opr} #{num2} =  #{eval(num1 + opr + num2)}" }
end

num1, num2 = %w(first second).map do |order| 
  puts "Enter the #{order} number:" 
  answer = gets.chomp.to_i 
end

arithmetic(num1, num2)

# Or ------------------------------------------------------------------------------------------

def arithmetic(arr)
  %w(+ - * / % **).each { |opr| puts "#{arr[0]} #{opr} #{arr[1]} = #{arr.inject(opr)}" }
end

nums = %w(first second).map do |order| 
  puts "Enter the #{order} number:" 
  answer = gets.chomp.to_i 
end

arithmetic(nums)

