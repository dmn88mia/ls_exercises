# Understand the problem : 
# To caluclate the total bill after bill and tip have been given

# Set up your test cases

# Describe your inputs, outputs, and data structures
# strings that represent the bill and total that will be turned into floats.

# Describe your algorithm
# Tip = multiply by 0.01 to gain the % and multiply by the bill.
# Total = add the bill and tip for the total amount and display it with 2 decimals using
# the format/sprintf method.

# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# -------------------------------------------------------------------------------------
# Begin coding:

def calculate_total(bill, percentage)
  tip = sprintf('%.2f', (bill * (percentage * 0.01)).round(2))
  total = sprintf('%.2f', (bill + tip.to_f).round(2))
  puts "The tip is $#{tip}." 
  puts "The total is $#{total}"
end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

calculate_total(bill, tip_percentage)