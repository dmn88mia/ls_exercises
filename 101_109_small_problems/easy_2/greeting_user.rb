# Understand the problem : 
# Ask for users name, if ! is included then return all caps answer. If not, then return greeting and name.

# Set up your test cases

# Describe your inputs, outputs, and data structures
# string that will be a name.
# a sentence that will greet the user depending on the input including an exclamation mark.

# Describe your algorithm
# Calling the include method on the string name to check if an exclamation mark is found.

# Greeting a user

# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# -------------------------------------------------------------------------------------
# Begin coding:

def greeting_user(name)
  name.include?('!') ? puts("HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?") : puts("Hello #{name.capitalize}")
end

puts "What is your name?"
name = gets.chomp

greeting_user(name)

# -----------------------------------------------------
print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end









