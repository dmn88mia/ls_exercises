# Understand the problem : 
# To count the number of vehicle occurrences in the array.

# Set up your test cases
# count_occurrences(array)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Describe your inputs, outputs, and data structures
# The input will be an array with strings of vehicles
# It will print/puts the amount of times the vehicle type occurs in the array given. 

# Describe your algorithm
# I will call uniq on the array given so that we iterate less in our sequence. After
# calling uniq I will call each_with_object to create a hash and set the hash key to
# the amount of times the vehicle string is counted in the array with the count method
# that I will use on the original array. After the vehicle type has been set, I will
# be printined/puts it out by using string interpolation; I will also be using the
# fetch method to grab and print the value that was set in the line above when hash
# is being set with its key and value. 


# How Many?

# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2


# -------------------------------------------------------------------------------------
# Begin coding:

array = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  array.uniq.each_with_object({}) do |vehicle, hash| 
    hash[vehicle] = array.count(vehicle) 
    puts "#{vehicle} => #{hash.fetch(vehicle)}"
  end
end

def count_occurrences(array)
  hash = array.uniq.each_with_object({}) { |vehicle, hash| hash[vehicle] = array.count(vehicle) }
  hash.each { |k,v| puts "#{k} => #{v}" }
end

def count_occurrences(array)
 array.uniq.each { |vehicle| puts "#{vehicle} => #{array.count(vehicle)}" }
end

def count_occurrences(array)
  hash = {}
  array.each { |vehicle| hash[vehicle] = array.join(' ').scan(vehicle).count }
  hash.each { |k,v| puts "#{k} => #{v}" }
end
 
 count_occurrences(array)