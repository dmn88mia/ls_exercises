# Understand the problem : 
# print odd numbers from 1 to 99

# Set up your test cases

# Describe your inputs, outputs, and data structures

# Describe your algorithm
# iterate through 100 with the times method and print num if odd using .odd? method

# Odd Numbers

# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# -------------------------------------------------------------------------------------
# Begin coding:

1.upto(99) { |num| puts num if num.odd? }

100.times { |i| p i if i.odd? }

(1..99).to_a.each { |num| puts num if num.odd? }


