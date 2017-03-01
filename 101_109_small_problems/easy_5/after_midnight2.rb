# Understand the problem : 
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and 
# after midnight, respectively. Both methods should return a value in the range 0..1439.

# Set up your test cases
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Describe your inputs, outputs, and data structures
# input will be a string that represnts the number of minutes before or after midnight.
# output: a number of minutes before or after midnight depending on the method used.

# Describe your algorithm
# Split the string by ':' then assign the first elemetn to hour and the second element to minutes. For hour we turn to integer (to_i) then multiply it by 60, minutes we just turn into an integer with to_i and then add them number
# together for the after midnight results. For the before midnight we do the same except we subtract from the total number of minutes in a day (1440), this will give us a result counting down from 24 hours.

# After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
# Disregard Daylight Savings and Standard Time and other irregularities.



# -------------------------------------------------------------------------------------
# Begin coding:

MINUTES_IN_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  return 0 if time == '24:00'
  time = time.split(':').map.with_index {|n, idx| idx == 0 ? n.to_i * MINUTES_PER_HOUR : n.to_i }.inject(0, :+)

end

def before_midnight(time)
  return 0 if time == '00:00' || time == '24:00'
  time = (MINUTES_IN_DAY) - after_midnight(time)
end

p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0