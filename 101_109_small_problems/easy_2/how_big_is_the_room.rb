# Understand the problem : 
# Create a program that calculates the area in sqmeters and sqfeet.

# Set up your test cases

# Describe your inputs, outputs, and data structures
# string/numbers that will be converted to integers for the equation of measuring the area

# Describe your algorithm
# Multiply l * w to gain the sqmeter.
# Multiply the sqmeter by 10.7639 which is the square foot in a meter to gain the sq feet
# and display the results.

# How big is the room?

# Build a program that asks a user for the length and width of a room in meters and 
# then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).


# -------------------------------------------------------------------------------------
# Begin coding:
# Modify this program to ask for the input measurements in feet, and display the results 
# in square feet, square inches, and square centimeters.

# Further Exploration:
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

def area(length, width)
  area_ft = (length * width).round(2)
  area_inch = (area_ft * SQFEET_TO_SQINCHES).round(2)
  area_cent = (area_ft * SQFEET_TO_SQCENTIMETERS).round(2)
  puts "The area of the room is #{area_ft} square feet (#{area_inch} square inches) & (#{area_cent} square centimeters)"
end

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area(length,width)

# Original problem set -----------------------------------------------------------------------------------------------------

def area(length, width)
  meter_to_feet = 10.7639
  square_meter = length * width
  square_feet = square_meter * meter_to_feet
  puts "The area of the room is #{square_meter} square meters (#{square_feet.round(2)} square feet)"
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area(length,width)



