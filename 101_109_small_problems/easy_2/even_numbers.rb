# Understand the problem : 
# print even numbers from 1 to 99

# Set up your test cases

# Describe your inputs, outputs, and data structures

# Describe your algorithm
# iterate through 100 with the times method and print num if even num using .even? method

# Even Numbers

# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# -------------------------------------------------------------------------------------
# Begin coding:

# 1.upto(99) { |num| puts num if num.even? }

# 100.times { |i| p i if i.even? && i != 0 }

(1..99).to_a.each { |num| puts num if num.even? }
