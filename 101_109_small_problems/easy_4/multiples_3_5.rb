# Understand the problem : 
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should 
# be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# Set up your test cases
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Describe your inputs, outputs, and data structures
# input will be an integer
# output will be multipes of 3 and 5 all added up.

# Describe your algorithm
# iterate from 1 to given number, select n if divisable by 3 or 5, then add all the integers from the selected.

# Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168


# -------------------------------------------------------------------------------------
# Begin coding:

def multisum(num)
  (1..num).to_a.select { |n| n % 3 == 0 || n % 5 == 0 }.inject(0, :+)
end

def multisum(num)
  counter = 1
  sum = 0

  while counter <= num
    sum += counter if counter % 3 == 0 || counter % 5 == 0 
    counter +=1
  end
  sum
end




p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168

