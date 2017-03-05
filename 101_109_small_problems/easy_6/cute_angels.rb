# Set up your test cases
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Describe your inputs, outputs, and data structures
# input: a number
# output: a string the represents the degreee,min and seconds of the number.

# Describe your algorithm
# Basic algorithim for finding degree, min and secs. If the number is neg than the variable sign will be neg sign otherwise it will be blank.
# If one digit is returned then we prepend a 0 for the correct format.

# Cute angles

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes, and seconds. You should use a degree symbol (˚) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.

# Examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# Note: your results may differ slightly depending on how you round values, but should generally be within a second or two of the results shown.

# -------------------------------------------------------------------------------------
# Begin coding:
DEGREE = "\xC2\xB0"

def one_digit?(num)
  num.to_s.size == 1 ? num.to_s.prepend('0') : num 
end

def dms(num)
  positive = num >= 0
  sign = positive ? '' : '-'
  num = positive ? (num.to_f) : (num.to_f * - 1)
  deg = num.floor
  min = ((num - num.floor) * 60).floor
  sec = ((((num - num.floor) * 60) - min.floor) * 60).floor
  puts "%(#{sign}#{one_digit?(deg)}#{DEGREE}#{one_digit?(min)}'#{one_digit?(sec)}\")"
end
dms(-0)
dms(-76.73)
dms(696.898754)
p one_digit?(90)