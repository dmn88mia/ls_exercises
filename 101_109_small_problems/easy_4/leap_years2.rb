# Understand the problem : 
# return true or false if the year is a leap year in both the Gregorian Calendar and Julian Calendar 

# Set up your test cases
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# Describe your inputs, outputs, and data structures
# input will be a year
# the return value will be a boolean value

# Describe your algorithm
# if and else statements

# Leap Years (Part 2)

# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# -------------------------------------------------------------------------------------
# Begin coding:


def leap_year?(year)
  return true if year % 4 == 0 && year < 1752
  return true if year % 4 == 0 && !(year % 100 == 0)
  year % 100 == 0 && year % 400 == 0 ? true : false
end

p leap_year?(2016) #== true
p leap_year?(2015) #== false
p leap_year?(2100) #== false
p leap_year?(2400) #== true
p leap_year?(240000) #== true
p leap_year?(240001) #== false
p leap_year?(2000) #== true
p leap_year?(1900) #== false
p leap_year?(1752) #== true
p leap_year?(1700) #== true
p leap_year?(1) #== false
p leap_year?(100) #== true
p leap_year?(400) #== true