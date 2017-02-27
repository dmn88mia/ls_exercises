# Understand the problem : 
# Convert a number into a string with no helper methods.

# Set up your test cases
# p ascii_value('Four score') #== 984
# p ascii_value('Launch School') #== 1251
# p ascii_value('a') #== 97
# p ascii_value('') #== 0

# Describe your inputs, outputs, and data structures
# input will be a string
# output: an integer that is the sum of the ascii values from the string

# Describe your algorithm
# Iterate through the string after calling chars and call the .ord on the char for a integer saved into an array and summed up

# ASCII String Value

# Write a method that determines and returns the ASCII string value of a string
 # that is passed in as an argument. The ASCII string value is the sum of 
 # the ASCII values of every character in the string. (You may use String
 #ord to determine the ASCII value of a character.)

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# -------------------------------------------------------------------------------------
# Begin coding:

def ascii_value(str)
  str.chars.map(&:ord).inject(0, :+)
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0

