# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.en numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

num = 5
(1..num).inject(0) { |sum, integer| sum + integer } # => 15

# The inject method takes an argument and a block. The block will be executed once for each element 
# contained in the object that inject was called on ( (1,2,3,4,5) in the example above ). The argument passed to 
# inject will be used as the first argument to the block ( in this case |'sum'|, the first time it's executed. The  
# second argument used to the block will be the first element of the object that we called inject on ( (1..num) 
# <== first number will be '1' ). The return value of the block will be used as the sum argument the next time 
# the block is executed.

# In the example above we add the sum, 0, to the integer, 1. The return value of the block will be 0 + 1, or 1. 
# This will result in 1 being used as the sum argument the second time the block is executed and so on for each # iteration.

# Begin coding:

# Further exploration -----------------------------

def sum_int(num)
  (1..num).inject(0, :+)
  #block form
  (1..num).inject { |sum, n| sum + n }
end

def product_int(num)
  (1..num).reduce(1, :*)                          
   # Same using a block
  (1..num).inject(1) { |product, n| product * n } 
end

# sum ---------------------------------------------

def sum_int(num)
  sum = 0
  (1..num).to_a.each { |n| sum += n }
  sum
end

def sum_int(num)
  sum = 1
  count = 2

  (num - 1).times do
    sum += count
    count += 1
  end

  sum
end
  
def sum_int(num)
  sum = 1
  add = 2

  while num > 1
    sum += add
    add += 1
    num -= 1
  end

  sum
end
 
def sum_int(num) 
  sum = 1
  add = 2

  loop do
    break if num == 1
    sum += add
    add += 1
    num -= 1
  end

  sum
end

# # product --------------------------------

def product_int(num)
  product = 1
  (1..num).to_a.each { |n| product *= n }
  product
end

def product_int(num)
  product = 1
  count = 2

  (num - 1).times do
    product *= count
    count += 1
  end

  product
end

integer = nil
type = nil

loop do
  puts "Please enter an integer greater than 0:"
  integer = gets.chomp
  if integer.to_i.to_s == integer
    integer = integer.to_i
    break
  end
end

loop do 
  puts "Enter 's' to compute the sum, 'p', to compute the product."
  type = gets.chomp.downcase
  break if type == 's' || type == 'p'
end

if type.downcase == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum_int(integer)}"
else 
  puts "The product fo the integer between 1 and #{integer} is #{product_int(integer)}"
end
                       