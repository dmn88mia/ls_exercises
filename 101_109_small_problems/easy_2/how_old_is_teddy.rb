# Understand the problem : 
# Find random age 20-200 and print teddy if name is empty

# Set up your test cases

# Describe your inputs, outputs, and data structures
# variable that contains random age and varaible that ask for name

# Describe your algorithm
# String interpolation

# How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. To get the age, 
# you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!


# -------------------------------------------------------------------------------------
# Begin coding:

puts "What is your name?"
name = gets.chomp
rand_age = (20..200).to_a.sample
name.empty? ? (puts "Teddy is #{rand_age} years old") : (puts "#{name} is #{rand_age} years old")
