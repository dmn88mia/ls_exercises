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

# Running Totals

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []


# -------------------------------------------------------------------------------------
# Begin coding:



# Using Enumerable#inject

def running_total(arr) 
  arr.map.with_index { |_, idx| arr.first(idx + 1).inject(0,:+) } 
end

# Using Array#each_with_object

def running_total(arr)
  sum = 0
  original_and_new = arr.each_with_object({}) { |num, hash| hash[num] = sum += num }
  puts "Here is the original => #{original_and_new.keys} and the running_total => #{original_and_new.values}"
end

# Using Enumerable#inject

def running_total(arr)
  running_total = []
  idx = 0 

  while idx < arr.size
    idx += 1
    running_total << arr.first(idx).inject(0,:+)
  end
  running_total
end

#  # Using Array#each_with_index

def running_total(arr)
  running_total = [] 
  sum = 0

  arr.each_with_index do |n, idx|
    sum += arr[idx]
    running_total << sum
  end
  running_total
end   

running_total([2, 5, 13])# == [2, 7, 20]
running_total([14, 11, 7, 15, 20])# == [14, 25, 32, 47, 67]
running_total([3])# == [3]
running_total([])# == []
