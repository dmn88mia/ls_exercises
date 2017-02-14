array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2
p array1

# prints out: 

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# array1 and array2 print out the same elements. Every element added to array2
# is a reference to the same object in array1 for each element being added to
# array2. Every element in array1 and array2 reference the same object. Once we
# call a mutating method on an element in the array1 (a reference to the object) it affects 
# elements in both arrays. 