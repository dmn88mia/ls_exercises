# Understand the problem : 
# A method that will print out the string it is given as an arguement by the number 
# which is the second arguement.


# Set up your test cases
# repeat('Hello', 3)
# Goodbye
# Goodbye
# Goodbye

# Describe your inputs, outputs, and data structures
# First arguement will be the string while the second will be the amount of times
# the string will be printed.

# Describe your algorithm
# I will be using the times method. I will use the number passed in the repeat method
# as the value for the times method. In the times block I will use puts 'Hello'. 
# This will iterate 3x and print 'Hello' through each iteration.

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)
# Output:

# Hello
# Hello
# Hello

# -------------------------------------------------------------------------------------
# Begin coding:


def repeat_1(string, int)
  int.times { |int| puts string }
end

def repeat_2(string, int)
  counter = 0
  (counter += 1; puts string) while counter < int
end

def repeat_3(string, int)
  counter = 0

  loop do
    break if counter == int
    puts string
    counter += 1
  end

end

def repeat_4(string, int)
  int.downto(1) { puts string }
end

def repeat_5(string, int)
  loop do
    break if int == 0
    puts string
    int -= 1
  end
end


repeat_1('Hello', 3)
repeat_2('Goodbye', 3)
repeat_3('Leave', 3)
repeat_4('Now', 3)
repeat_5('OMG', 3)
