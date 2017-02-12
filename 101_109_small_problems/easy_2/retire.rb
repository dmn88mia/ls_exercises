# Understand the problem : 
# To caluclate the total bill after bill and tip have been given

# Set up your test cases

# Describe your inputs, outputs, and data structures
# strings that represent the bill and total that will be turned into floats.

# Describe your algorithm
# Tip = multiply by 0.01 to gain the % and multiply by the bill.
# Total = add the bill and tip for the total amount and display it with 2 decimals using
# the format/sprintf method.

# When will I Retire?

# # Build a program that displays when the user will retire and how many years she has to 
# work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# -------------------------------------------------------------------------------------
# Begin coding:
CURRENT_YEAR = Time.now.year

def retiring(age, retirement_age)
  years_left = retirement_age - age 
  year_done = CURRENT_YEAR + years_left

  puts "It's 2017. You will retire in #{year_done}"
  years_left == 1 ? (puts "You have only #{years_left} year left of work to go!") : (puts "You have only #{years_left} years left of work to go!")
end

puts "What is your age?"
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.to_i

retiring(age, retirement_age)
